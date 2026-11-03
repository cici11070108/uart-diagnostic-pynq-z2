"""Protocol-level driver tests; these do not replace a board test."""

import csv
import importlib.util
from pathlib import Path
import tempfile
import unittest
from unittest import mock


MODULE = Path(__file__).resolve().parents[1] / "board" / "uart_diag.py"
spec = importlib.util.spec_from_file_location("uart_diag_under_test", MODULE)
uart_diag = importlib.util.module_from_spec(spec)
spec.loader.exec_module(uart_diag)


class FakeMMIO:
    """A FIFO model with delayed command acknowledgement and toggle semantics."""

    def __init__(self, events=(), ack=0, delay_reads=0, overflow=False):
        self.events = list(events)  # (data_byte, framing_error)
        self.ack = ack
        self.delay_reads = delay_reads
        self.overflow = overflow
        self.signature = 0xA5
        self.writes = []
        self.command = ack
        self.reads_left = 0
        self.ignore_commands = False
        self.pop_count = 0

    def write(self, offset, value):
        if offset != 8:
            raise AssertionError("Driver used an unexpected register")
        self.writes.append(value)
        self.command = value
        self.reads_left = self.delay_reads

    def read(self, offset):
        if offset != 0:
            raise AssertionError("Driver used an unexpected register")
        if not self.ignore_commands and (self.command & 1) != self.ack:
            if self.reads_left:
                self.reads_left -= 1
            else:
                opcode = (self.command >> 1) & 3
                if opcode == 1 and self.events:
                    self.events.pop(0)
                    self.pop_count += 1
                elif opcode == 2:
                    self.events.clear()
                    self.overflow = False
                self.ack = self.command & 1
        raw = (self.signature << 24) | (len(self.events) << 13) | (self.ack << 11)
        raw |= int(self.overflow) << 10
        if self.events:
            data, error = self.events[0]
            # Keep a deliberately stale byte for errors to test defensive decoding.
            raw |= data | (int(error) << 8) | (1 << 9) | (int(not error) << 12)
        return raw


class DriverTest(unittest.TestCase):
    def test_order_and_finite_limit(self):
        hw = FakeMMIO([(i, False) for i in range(100)])
        rx = uart_diag.UARTDiagnostic(hw)
        first = rx.read_events(3)
        second = rx.read_events(2)
        self.assertEqual([r["data"] for r in first + second], list(range(5)))
        self.assertEqual([r["index"] for r in first + second], [1, 2, 3, 4, 5])
        self.assertEqual(rx.status()["count"], 95)
        self.assertEqual(hw.pop_count, 5)
        self.assertEqual([value & 1 for value in hw.writes], [1, 0, 1, 0, 1])

    def test_delayed_ack_and_held_command_pop_exactly_once(self):
        hw = FakeMMIO([(0x55, False), (0xAA, False)], delay_reads=4)
        rx = uart_diag.UARTDiagnostic(hw)
        with mock.patch.object(uart_diag.time, "sleep"):
            result = rx.read_events(1)
        for _ in range(10):
            rx.status()
        self.assertEqual(result[0]["data"], 0x55)
        self.assertEqual(len(hw.writes), 1)
        self.assertEqual(hw.pop_count, 1)
        self.assertEqual(rx.status()["data"], 0xAA)

    def test_existing_ack_is_respected(self):
        hw = FakeMMIO([(0x80, False)], ack=1)
        result = uart_diag.UARTDiagnostic(hw).read_events(1)
        self.assertEqual(hw.writes, [2])  # POP opcode + request toggle zero
        self.assertEqual(result[0]["data"], 0x80)

    def test_bad_stop_does_not_report_stale_byte(self):
        hw = FakeMMIO([(0x55, False), (0x55, True), (0x00, False)])
        records = uart_diag.UARTDiagnostic(hw).read_events(3)
        self.assertEqual([row["data"] for row in records], [0x55, None, 0])
        self.assertEqual([row["hex"] for row in records], ["55", "", "00"])
        self.assertTrue(records[1]["framing_error"])
        self.assertFalse(records[1]["data_valid"])

    def test_clear_resets_overflow_and_record_index(self):
        hw = FakeMMIO([(0x55, False), (0xAA, False)], overflow=True)
        rx = uart_diag.UARTDiagnostic(hw)
        self.assertTrue(rx.read_events(1)[0]["overflow"])
        self.assertTrue(rx.overflow_seen)
        state = rx.clear()
        self.assertEqual(state["count"], 0)
        self.assertFalse(rx.overflow_seen)
        hw.events.append((0xA3, False))
        row = rx.read_events(1)[0]
        self.assertEqual(row["index"], 1)
        self.assertFalse(row["overflow"])

    def test_empty_drain_does_not_issue_pop(self):
        hw = FakeMMIO()
        self.assertEqual(uart_diag.UARTDiagnostic(hw).read_events(64), [])
        self.assertEqual(hw.writes, [])

    def test_ack_timeout_prevents_uncertain_retry(self):
        hw = FakeMMIO([(0x55, False)])
        hw.ignore_commands = True
        rx = uart_diag.UARTDiagnostic(hw, command_timeout=0.01)
        with mock.patch.object(uart_diag.time, "monotonic", side_effect=[1.0, 2.0]):
            with self.assertRaises(TimeoutError):
                rx.read_events(1)
        with self.assertRaisesRegex(RuntimeError, "completion is uncertain"):
            rx.clear()
        self.assertEqual(len(hw.writes), 1)

    def test_wrong_overlay_rejected_before_any_write(self):
        hw = FakeMMIO()
        hw.signature = 0x11
        with self.assertRaisesRegex(RuntimeError, "signature"):
            uart_diag.UARTDiagnostic(hw)
        self.assertEqual(hw.writes, [])

    def test_capture_limit_validation(self):
        rx = uart_diag.UARTDiagnostic(FakeMMIO())
        for limit in (-1, 1025):
            with self.assertRaises(ValueError):
                rx.read_events(limit)
        for limit in (True, "5", 1.5):
            with self.assertRaises(TypeError):
                rx.read_events(limit)

    def test_csv_distinguishes_unknown_data_and_zero(self):
        hw = FakeMMIO([(0x55, True), (0, False)], overflow=True)
        events = uart_diag.UARTDiagnostic(hw).read_events(2)
        with tempfile.TemporaryDirectory() as temp:
            path = Path(temp) / "events.csv"
            uart_diag.export_csv(events, path)
            with path.open(encoding="utf-8-sig", newline="") as source:
                rows = list(csv.DictReader(source))
        self.assertEqual(rows[0]["data_hex"], "")
        self.assertEqual(rows[0]["data_valid"], "0")
        self.assertEqual(rows[0]["framing_error"], "1")
        self.assertEqual(rows[1]["data_hex"], "00")
        self.assertEqual(rows[1]["data_valid"], "1")
        self.assertEqual(rows[1]["overflow_seen"], "1")


if __name__ == "__main__":
    unittest.main(verbosity=2)
