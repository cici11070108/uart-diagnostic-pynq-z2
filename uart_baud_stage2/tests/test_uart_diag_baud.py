"""Offline protocol/UI logic checks. No Vivado, FPGA, or browser rendering here."""

import ast
import base64
from html.parser import HTMLParser
import csv
import importlib.util
import json
from pathlib import Path
import sys
import tempfile
import types
import unittest
from unittest import mock

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("uart_diag_baud_test", ROOT / "board/uart_diag_baud.py")
driver = importlib.util.module_from_spec(spec)
spec.loader.exec_module(driver)


class FakeMMIO:
    def __init__(self, events=(), code=4, ack=0, delay=0):
        self.events, self.code, self.ack = list(events), code, ack
        self.command, self.delay, self.left = ack, delay, 0
        self.overflow, self.writes, self.pops = False, [], 0
        self.ignore, self.lost_after_set, self.reject_set = False, False, False
        self.signature_override = None

    def write(self, offset, value):
        assert offset == 8
        self.writes.append(value)
        self.command, self.left = value, self.delay

    def read(self, offset):
        assert offset == 0
        if not self.ignore and (self.command & 1) != self.ack:
            if self.left:
                self.left -= 1
            else:
                opcode = (self.command >> 1) & 3
                if opcode == 1 and self.events:
                    self.events.pop(0)
                    self.pops += 1
                elif opcode == 2:
                    self.events, self.overflow = [], False
                elif opcode == 3 and not self.reject_set:
                    requested = (self.command >> 3) & 7
                    if requested < 6:
                        self.code, self.events, self.overflow = requested, [], False
                self.ack = self.command & 1
                if opcode == 3 and self.lost_after_set:
                    self.lost_after_set = False
                    raise OSError("simulated status failure after successful baud write")
        signature = 0xB0 | self.code if self.signature_override is None else self.signature_override
        raw = (signature << 24) | (len(self.events) << 13) | (self.ack << 11)
        raw |= int(self.overflow) << 10
        if self.events:
            data, error = self.events[0]
            raw |= data | (int(error) << 8) | (1 << 9) | (int(not error) << 12)
        return raw


class DriverTests(unittest.TestCase):
    def test_all_six_rates_readback_and_ack(self):
        hw = FakeMMIO(ack=1, delay=3)
        rx = driver.UARTDiagnosticBaud(hw)
        with mock.patch.object(driver.time, "sleep"):
            for code, baud in enumerate(driver.BAUD_RATES):
                state = rx.set_baud(baud)
                self.assertEqual(state["baud"], baud)
                self.assertEqual(state["baud_code"], code)
                self.assertEqual(state["clocks_per_bit"], driver.DIVISORS[code])
                hw.events.extend((i, False) for i in range(64))
                rows = rx.read_events(64)
                self.assertEqual([r["data"] for r in rows], list(range(64)))
                self.assertEqual({r["baud"] for r in rows}, {baud})
                self.assertEqual(rows[0]["index"], 1)
                self.assertEqual(rx.status()["count"], 0)
        self.assertEqual(hw.pops, 384)
        self.assertEqual([w & 1 for w in hw.writes[:4]], [0, 1, 0, 1])

    def test_reject_old_or_bad_image_without_writes(self):
        for signature in (0xA5, 0x11, 0xB6, 0xBF):
            hw = FakeMMIO()
            hw.signature_override = signature
            with self.assertRaises(RuntimeError):
                driver.UARTDiagnosticBaud(hw)
            self.assertEqual(hw.writes, [])

    def test_parameter_validation_before_write(self):
        hw = FakeMMIO()
        rx = driver.UARTDiagnosticBaud(hw)
        for baud in (True, "9600", 9600.0, 1, 921600):
            with self.assertRaises(ValueError):
                rx.set_baud(baud)
        for size in (-1, 1025):
            with self.assertRaises(ValueError):
                rx.read_events(size)
        for size in (True, "1", 1.0):
            with self.assertRaises(TypeError):
                rx.read_events(size)
        self.assertEqual(hw.writes, [])

    def test_unread_data_prevents_baud_switch(self):
        hw = FakeMMIO([(0x55, False)])
        rx = driver.UARTDiagnosticBaud(hw)
        with self.assertRaisesRegex(ValueError, "unread"):
            rx.set_baud(9600)
        self.assertEqual(hw.code, 4)
        self.assertEqual(hw.writes, [])
        self.assertEqual(len(hw.events), 1)

    def test_clear_preserves_baud_and_resets_index_overflow(self):
        hw = FakeMMIO([(0x55, False)], code=0)
        hw.overflow = True
        rx = driver.UARTDiagnosticBaud(hw)
        self.assertTrue(rx.read_events(1)[0]["overflow"])
        state = rx.clear()
        self.assertEqual(state["baud"], 9600)
        self.assertFalse(rx.overflow_seen)
        hw.events.append((0xAA, False))
        self.assertEqual(rx.read_events(1)[0]["index"], 1)

    def test_break_invalid_data_and_csv_rate(self):
        hw = FakeMMIO([(0x77, True), (0, False), (0xAA, False)], code=2)
        rows = driver.UARTDiagnosticBaud(hw).read_events(3)
        self.assertEqual([r["data"] for r in rows], [None, 0, 0xAA])
        with tempfile.TemporaryDirectory() as folder:
            p = Path(folder) / "events.csv"
            driver.export_csv(rows, p)
            with p.open(encoding="utf-8-sig", newline="") as f:
                saved = list(csv.DictReader(f))
        self.assertEqual(saved[0]["data_hex"], "")
        self.assertEqual(saved[1]["data_hex"], "00")
        self.assertEqual(saved[0]["hardware_baud_setting"], "38400")

    def test_timeout_blocks_uncertain_retry(self):
        hw = FakeMMIO()
        rx = driver.UARTDiagnosticBaud(hw, command_timeout=.01)
        hw.ignore = True
        with mock.patch.object(driver.time, "monotonic", side_effect=[0., 1.]):
            with self.assertRaises(TimeoutError):
                rx.set_baud(9600)
        with self.assertRaisesRegex(RuntimeError, "uncertain"):
            rx.clear()
        self.assertEqual(len(hw.writes), 1)

    def test_ack_without_correct_baud_rejected(self):
        hw = FakeMMIO()
        hw.reject_set = True
        rx = driver.UARTDiagnosticBaud(hw)
        with self.assertRaisesRegex(RuntimeError, "readback"):
            rx.set_baud(9600)
        self.assertTrue(rx._uncertain)

    def test_external_rate_change_detected_before_pop(self):
        hw = FakeMMIO([(0x55, False)])
        rx = driver.UARTDiagnosticBaud(hw)
        hw.code = 0
        with self.assertRaisesRegex(RuntimeError, "outside"):
            rx.read_events(1)
        self.assertEqual(hw.writes, [])


class FakeWidget:
    def __init__(self, *args, **kwargs):
        self.disabled, self.value, self.callbacks = False, kwargs.get("value", ""), []
        self.children = args
        for k, v in kwargs.items():
            setattr(self, k, v)

    def on_click(self, callback, remove=False):
        if remove:
            self.callbacks.remove(callback)
        else:
            self.callbacks.append(callback)


def load_panel():
    notebook = json.loads((ROOT / "board/04_uart_baud_panel.ipynb").read_text(encoding="utf-8"))
    definitions, startup = ["".join(c["source"]) for c in notebook["cells"] if c["cell_type"] == "code"]
    widgets = types.ModuleType("ipywidgets")
    for name in ("Button", "Dropdown", "HTML", "HBox", "VBox"):
        setattr(widgets, name, FakeWidget)
    display_module = types.ModuleType("IPython.display")
    display_module.display = lambda *args: None
    with mock.patch.dict(sys.modules, {"ipywidgets": widgets, "IPython.display": display_module}):
        scope = {}
        exec(compile(definitions, "04 panel definitions", "exec"), scope)
    return scope["UARTBaudPanel"], definitions, startup


Panel, DEFINITIONS, STARTUP = load_panel()


class PanelTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.hw = FakeMMIO()
        self.rx = driver.UARTDiagnosticBaud(self.hw)
        self.panel = Panel(self.rx, self.temp.name)

    def test_startup_guard_and_python36_syntax(self):
        for code in (DEFINITIONS, STARTUP, (ROOT / "board/uart_diag_baud.py").read_text(),
                     (ROOT / "pc/send_uart_baud.py").read_text()):
            ast.parse(code, feature_version=(3, 6))
        with self.assertRaisesRegex(RuntimeError, "Run All"):
            exec(STARTUP, {})

    def test_rate_change_auto_saves_old_configuration_first(self):
        self.hw.events.extend((i, False) for i in range(64))
        self.panel.on_read(None)
        self.assertTrue(self.panel.checks()["ramp_64_match"])
        self.panel.baud_select.value = 9600
        self.panel.on_apply(None)
        self.assertEqual(self.panel.state["baud"], 9600)
        self.assertEqual(self.panel.records, [])
        files = list((Path(self.temp.name) / "panel_exports").glob("*.json"))
        saved = json.loads(files[0].read_text())
        self.assertEqual(saved["configuration"]["hardware_baud_setting"], 115200)
        self.assertEqual(saved["event_count"], 64)
        self.assertTrue(saved["checks"]["ramp_64_match"])

    def test_failed_save_never_clears_or_changes_baud(self):
        self.hw.events.append((0x55, False))
        self.panel.on_read(None)
        count = len(self.hw.writes)
        self.panel.baud_select.value = 9600
        with mock.patch.object(self.panel, "save", side_effect=OSError("disk full")):
            self.panel.on_apply(None)
            self.panel.on_new(None)
        self.assertEqual(len(self.panel.records), 1)
        self.assertEqual(len(self.hw.writes), count)
        self.assertEqual(self.hw.code, 4)

    def test_switch_completion_unknown_keeps_old_record_config(self):
        self.hw.events.append((0x55, False))
        self.panel.on_read(None)
        self.panel.baud_select.value = 9600
        self.hw.lost_after_set = True
        self.panel.on_apply(None)
        self.assertEqual(self.hw.code, 0)  # hardware did switch; readback failed
        self.assertTrue(self.panel.failed)
        self.assertEqual(len(self.panel.records), 1)
        self.assertEqual(self.panel.configuration["hardware_baud_setting"], 115200)
        self.assertTrue(self.panel.apply_button.disabled)
        self.assertFalse(self.panel.export_button.disabled)
        _, meta = self.panel.save()
        saved = json.loads(meta.read_text())
        self.assertEqual(saved["configuration"]["hardware_baud_setting"], 115200)
        self.assertIsNone(saved["current_hardware_baud"])
        self.assertEqual(saved["attempted_baud_after_this_session"], 9600)

    def test_read_partial_failure_keeps_confirmed_events(self):
        original = self.rx.read_events
        calls = [0]
        self.hw.events.extend([(0x55, False), (0xAA, False)])
        def fail_second(max_events):
            calls[0] += 1
            if calls[0] == 2:
                raise OSError("MMIO failed")
            return original(max_events)
        with mock.patch.object(self.rx, "read_events", side_effect=fail_second):
            self.panel.on_read(None)
        self.assertEqual([e["data"] for e in self.panel.records], [0x55])
        self.assertTrue(self.panel.failed)
        self.assertFalse(self.panel.export_button.disabled)

    def test_unread_events_block_config_and_table_escapes_html(self):
        self.hw.events.extend([(0x55, True), (ord('<'), False), (0xAA, False)])
        self.panel.baud_select.value = 9600
        self.panel.on_apply(None)
        self.assertEqual(self.hw.writes, [])
        self.panel.on_read(None)
        self.assertIn("&lt;", self.panel.table.value)
        self.assertIn("color:#a40000", self.panel.table.value)
        self.assertIn("--", self.panel.table.value)

    def test_break_check_and_unique_exports_late_overflow(self):
        self.hw.events.extend([(0x77, True), (0x55, False), (0xAA, False)])
        self.panel.on_read(None)
        self.assertTrue(self.panel.checks()["break_recovery_match"])
        first, _ = self.panel.save()
        self.hw.overflow = True
        second, meta = self.panel.save()
        self.assertNotEqual(first, second)
        self.assertTrue(first.is_file())
        self.assertTrue(json.loads(meta.read_text())["session_overflow_seen"])
        self.assertFalse(self.panel.checks()["break_recovery_match"])
        with second.open(encoding="utf-8-sig", newline="") as f:
            rows = list(csv.DictReader(f))
        self.assertEqual(rows[0]["data_hex"], "")
        self.assertEqual(rows[0]["session_overflow_seen"], "1")

    def test_limits_and_detach(self):
        self.hw.events.extend((i & 255, False) for i in range(300))
        self.panel.on_read(None)
        self.assertEqual(len(self.panel.records), 256)
        self.assertEqual(len(self.hw.events), 44)
        self.assertEqual(self.panel.table.value.count("<tr>"), 201)  # 200 rows + header
        self.panel.LIMIT = 257
        self.panel.on_read(None)
        self.assertEqual(len(self.panel.records), 257)
        self.assertTrue(self.panel.read_button.disabled)
        self.panel.detach()
        self.assertTrue(self.panel.baud_select.disabled)
        for button, _ in self.panel.bindings:
            self.assertEqual(button.callbacks, [])
            self.assertTrue(button.disabled)


class DownloadAnchors(HTMLParser):
    def __init__(self):
        super().__init__()
        self.anchors = []

    def handle_starttag(self, tag, attrs):
        if tag == "a":
            self.anchors.append(dict(attrs))


class DownloadLinkTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        nested = Path(self.temp.name) / "uart_diag" / "uart_baud"
        nested.mkdir(parents=True)
        self.hw = FakeMMIO()
        self.panel = Panel(driver.UARTDiagnosticBaud(self.hw), nested)

    def links_and_files(self, paths):
        parser = DownloadAnchors()
        parser.feed(self.panel.links)
        self.assertEqual(len(parser.anchors), len(paths))
        for anchor, path in zip(parser.anchors, paths):
            self.assertEqual(anchor["download"], path.name)
            self.assertTrue(anchor["href"].startswith("data:application/octet-stream;base64,"))
            self.assertNotIn("/files/", anchor["href"])
            raw = base64.b64decode(anchor["href"].split(",", 1)[1], validate=True)
            self.assertEqual(raw, path.read_bytes())
        return parser.anchors

    def test_nested_notebook_downloads_exact_csv_and_json_bytes(self):
        self.hw.events.extend([(0x77, True), (0x55, False), (0xAA, False)])
        self.panel.on_read(None)
        paths = self.panel.save()
        self.links_and_files(paths)
        self.assertEqual(paths[0].parent, self.panel.base / "panel_exports")
        self.assertTrue(json.loads(paths[1].read_text())["checks"]["break_recovery_match"])

    def test_full_10000_record_download_size_is_bounded(self):
        # All valid rows use two HEX digits; rate/divisor widths are maximal
        # in combination, with the normal 1..10000 record index sequence.
        self.panel.records = [{"index": i + 1, "data": 0xFF, "hex": "FF",
                               "data_valid": True, "framing_error": False,
                               "overflow": False, "baud": 115200,
                               "clocks_per_bit": 868}
                              for i in range(self.panel.LIMIT)]
        paths = self.panel.save()
        anchors = self.links_and_files(paths)
        self.assertLess(paths[0].stat().st_size, 512 * 1024)
        self.assertLess(sum(len(a["href"]) for a in anchors), 1024 * 1024)
        self.assertEqual(json.loads(paths[1].read_text())["event_count"], 10000)

    def test_unexpected_oversized_export_keeps_a_file_list_fallback(self):
        helper = self.panel.save.__globals__["file_download_link"]
        path = self.panel.base / "large.csv"
        path.write_bytes(b"x" * (1024 * 1024 + 1))
        html = helper(path)
        self.assertNotIn("data:", html)
        self.assertIn("panel_exports", html)
        self.assertTrue(path.is_file())


class SenderTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        spec = importlib.util.spec_from_file_location("sender_baud_test", ROOT / "pc/send_uart_baud.py")
        cls.sender = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(cls.sender)

    def test_bad_args_do_not_open_serial(self):
        fake = types.ModuleType("serial")
        fake.Serial = mock.Mock()
        with mock.patch.dict(sys.modules, {"serial": fake}), mock.patch("sys.stderr"):
            for args in (["--baud", "921600"], ["--hex", "zz"], ["--hex", ""],
                         ["--hex", "00 " * 65], ["--ramp", "--break-recovery"]):
                with self.assertRaises(SystemExit):
                    self.sender.main(["--port", "COM5"] + args)
        fake.Serial.assert_not_called()

    def test_ramp_and_break_payload_and_serial_configuration(self):
        fake = types.ModuleType("serial")
        fake.EIGHTBITS, fake.PARITY_NONE, fake.STOPBITS_ONE = 8, "N", 1
        fake.SerialException = OSError
        serial = mock.MagicMock()
        link = serial.return_value.__enter__.return_value
        fake.Serial = serial
        link.write.side_effect = lambda data: len(data)
        with mock.patch.dict(sys.modules, {"serial": fake}), mock.patch("builtins.print"):
            self.assertEqual(self.sender.main(["--port", "COM5", "--baud", "9600", "--ramp"]), 0)
            self.assertEqual(link.write.call_args[0][0], bytes(range(64)))
            self.assertEqual(serial.call_args[1]["baudrate"], 9600)
            self.assertFalse(serial.call_args[1]["rtscts"])
            with mock.patch.object(self.sender.time, "sleep") as sleep:
                self.assertEqual(self.sender.main(["--port", "COM5", "--baud", "230400", "--break-recovery"]), 0)
            link.send_break.assert_called_once_with(.02)
            sleep.assert_called_once_with(.1)
            self.assertEqual(link.write.call_args[0][0], bytes.fromhex("55 AA"))


if __name__ == "__main__":
    unittest.main(verbosity=2)
