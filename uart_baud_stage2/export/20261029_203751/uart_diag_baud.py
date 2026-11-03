"""Runtime-baud UART diagnostic driver for the stage-2 FPGA image.

Use one kernel at a time, stop the transmitter before clearing/configuring,
and pass overlay.axi_gpio_diag.mmio.  This file has no PYNQ dependency.
The signature byte B0..B5 reports the hardware's selected baud-rate code;
stage-1 A5 images are deliberately rejected.
"""

import csv
import time


BAUD_RATES = (9600, 19200, 38400, 57600, 115200, 230400)
DIVISORS = (10417, 5208, 2604, 1736, 868, 434)
PL_CLOCK_HZ = 100000000


class UARTDiagnosticBaud:
    CAPACITY = 1024
    STATUS_OFFSET = 0x00
    COMMAND_OFFSET = 0x08
    POP, CLEAR, SET_BAUD = 1, 2, 3

    def __init__(self, mmio, command_timeout=0.25):
        if command_timeout <= 0:
            raise ValueError("command_timeout must be positive")
        self.mmio = mmio
        self.command_timeout = float(command_timeout)
        self.overflow_seen = False
        self._uncertain = False
        self._next_index = 1
        self._baud_code = self.status()["baud_code"]

    def status(self):
        """Read one status word without removing an event.

        baud is the selected nominal setting, read from hardware.  The
        calculated_baud field is 100 MHz / divisor, NOT a measured line rate.
        """
        raw = int(self.mmio.read(self.STATUS_OFFSET)) & 0xFFFFFFFF
        signature = raw >> 24
        if signature == 0xA5:
            raise RuntimeError("Stage-1 fixed-baud image is loaded. Load the matching "
                               "uart_diag_baud.bit and uart_diag_baud.hwh first.")
        if signature & 0xF0 != 0xB0 or signature & 0x0F >= len(BAUD_RATES):
            raise RuntimeError("Stage-2 UART signature/baud code is invalid: 0x{:08X}. "
                               "Check the bit/hwh pair and hardware reset.".format(raw))
        code = signature & 0x0F
        nonempty = bool(raw & (1 << 9))
        error = nonempty and bool(raw & (1 << 8))
        data_valid = nonempty and not error and bool(raw & (1 << 12))
        overflow = bool(raw & (1 << 10))
        self.overflow_seen = self.overflow_seen or overflow
        return {"baud_code": code, "baud": BAUD_RATES[code],
                "clocks_per_bit": DIVISORS[code],
                "calculated_baud": float(PL_CLOCK_HZ) / DIVISORS[code],
                "count": (raw >> 13) & 0x7FF, "nonempty": nonempty,
                "overflow": overflow, "ack": (raw >> 11) & 1,
                "framing_error": error, "data_valid": data_valid,
                "data": (raw & 0xFF) if data_valid else None, "raw": raw}

    def _assert_configuration(self, state):
        if state["baud_code"] != self._baud_code:
            self._uncertain = True
            raise RuntimeError("Hardware baud changed outside this driver. Stop other "
                               "UART programs and reload the panel; existing records "
                               "must keep their original configuration.")

    def _command(self, opcode, payload=0, expected_code=None):
        if self._uncertain:
            raise RuntimeError("Previous command/configuration state is uncertain. "
                               "Stop sending, reload the overlay and create a new driver.")
        before = self.status()
        self._assert_configuration(before)
        if expected_code is None:
            expected_code = self._baud_code
        wanted_ack = before["ack"] ^ 1
        # A write or subsequent read failure can leave command completion unknown.
        try:
            self.mmio.write(self.COMMAND_OFFSET, payload | (opcode << 1) | wanted_ack)
            deadline = time.monotonic() + self.command_timeout
            while True:
                state = self.status()
                if state["ack"] == wanted_ack:
                    if state["baud_code"] != expected_code:
                        raise RuntimeError("Command ACK received, but hardware baud "
                                           "readback does not match the requested code.")
                    return state
                if time.monotonic() >= deadline:
                    raise TimeoutError("UART command was not acknowledged; check PL "
                                       "clock/reset and AXI GPIO connections.")
                time.sleep(0.0001)
        except Exception:
            self._uncertain = True
            raise

    def clear(self):
        """Clear FIFO/overflow/index while retaining baud; stop sending first."""
        state = self._command(self.CLEAR)
        self._next_index = 1
        self.overflow_seen = bool(state["overflow"])
        return state

    def set_baud(self, baud):
        """Select a supported rate, resetting RX/FIFO after an acknowledged write.

        Stop the PC transmitter first. Unread FIFO entries cause a ValueError
        without a write: read/export them first. A successful switch starts a
        fresh record sequence. This method does not configure the PC adapter.
        """
        if isinstance(baud, bool) or not isinstance(baud, int) or baud not in BAUD_RATES:
            raise ValueError("baud must be one of {}".format(BAUD_RATES))
        state = self.status()
        self._assert_configuration(state)
        if state["count"]:
            raise ValueError("FIFO has {} unread event(s); read them before switching "
                             "baud.".format(state["count"]))
        code = BAUD_RATES.index(baud)
        state = self._command(self.SET_BAUD, payload=(code << 3), expected_code=code)
        self._baud_code = code
        self._next_index = 1
        self.overflow_seen = bool(state["overflow"])
        return state

    def read_events(self, max_events=64):
        """Drain up to max_events; use max_events=1 to commit records individually."""
        if isinstance(max_events, bool) or not isinstance(max_events, int):
            raise TypeError("max_events must be an integer")
        if not 0 <= max_events <= self.CAPACITY:
            raise ValueError("max_events must be between 0 and 1024")
        events = []
        for _ in range(max_events):
            state = self.status()
            self._assert_configuration(state)
            if not state["nonempty"]:
                break
            if not state["framing_error"] and not state["data_valid"]:
                raise RuntimeError("FIFO head has neither a valid byte nor an error")
            self._command(self.POP)
            value = state["data"]
            events.append({"index": self._next_index, "data": value,
                           "hex": "" if value is None else "{:02X}".format(value),
                           "framing_error": state["framing_error"],
                           "data_valid": state["data_valid"],
                           "overflow": self.overflow_seen,
                           "baud": state["baud"],
                           "clocks_per_bit": state["clocks_per_bit"]})
            self._next_index += 1
        return events


def export_csv(events, filename):
    """Export actual read events. Blank data means invalid byte, not hex 00."""
    with open(filename, "w", newline="", encoding="utf-8-sig") as stream:
        writer = csv.writer(stream)
        writer.writerow(["index", "data_hex", "data_valid", "framing_error",
                         "overflow_seen_at_read", "hardware_baud_setting", "clocks_per_bit"])
        for event in events:
            writer.writerow([event["index"], event["hex"], int(event["data_valid"]),
                             int(event["framing_error"]), int(event["overflow"]),
                             event["baud"], event["clocks_per_bit"]])
    return str(filename)
