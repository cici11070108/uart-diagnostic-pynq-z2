"""Small Python driver for the UART event FIFO + dual-channel AXI GPIO.

Channel 1 is a 32-bit input (status, offset 0x00). Channel 2 is a
32-bit output (command, offset 0x08). This file has no PYNQ dependency;
pass ``overlay.axi_gpio_diag.mmio`` to UARTDiagnostic on the board.

Use one driver/kernel at a time. The first-stage receiver is fixed at
115200 baud, 8 data bits, no parity, 1 stop bit, with a 100 MHz PL clock.
"""

import csv
import time


class UARTDiagnostic:
    """Read stable FIFO entries, then acknowledge each POP explicitly."""

    CAPACITY = 1024
    STATUS_OFFSET = 0x00
    COMMAND_OFFSET = 0x08
    MAGIC = 0xA5
    POP = 1
    CLEAR = 2

    def __init__(self, mmio, command_timeout=0.25):
        if command_timeout <= 0:
            raise ValueError("command_timeout must be positive")
        self.mmio = mmio
        self.command_timeout = float(command_timeout)
        self.overflow_seen = False
        self._uncertain = False
        self._next_index = 1
        self.status()  # Detect a wrong overlay or a disconnected/reset bridge.

    def status(self):
        """Return one atomic status-word snapshot; this does not pop data."""
        raw = int(self.mmio.read(self.STATUS_OFFSET)) & 0xFFFFFFFF
        if (raw >> 24) != self.MAGIC:
            raise RuntimeError(
                "UART bridge signature is wrong (0x{:08X}). "
                "Load this project's uart_diag.bit + uart_diag.hwh first."
                .format(raw)
            )
        nonempty = bool(raw & (1 << 9))
        error = nonempty and bool(raw & (1 << 8))
        data_valid = nonempty and not error and bool(raw & (1 << 12))
        overflow = bool(raw & (1 << 10))
        self.overflow_seen = self.overflow_seen or overflow
        return {
            "count": (raw >> 13) & 0x7FF,
            "nonempty": nonempty,
            "overflow": overflow,
            "ack": (raw >> 11) & 1,
            "framing_error": error,
            "data_valid": data_valid,
            # A bad stop bit does not provide a valid byte in the existing RTL.
            "data": (raw & 0xFF) if data_valid else None,
            "raw": raw,
        }

    def _command(self, opcode):
        if self._uncertain:
            raise RuntimeError(
                "The previous command timed out; its completion is uncertain. "
                "Reload the overlay and create a new UARTDiagnostic instance "
                "before issuing another command."
            )
        # Start from the hardware's actual acknowledgement, not a guessed zero.
        wanted_ack = self.status()["ack"] ^ 1
        self.mmio.write(self.COMMAND_OFFSET, (opcode << 1) | wanted_ack)
        deadline = time.monotonic() + self.command_timeout
        while True:
            state = self.status()
            if state["ack"] == wanted_ack:
                return state
            if time.monotonic() >= deadline:
                self._uncertain = True
                raise TimeoutError(
                    "UART FIFO command was not acknowledged. Check the "
                    "100 MHz clock, reset polarity and AXI GPIO connections."
                )
            time.sleep(0.0001)

    def clear(self):
        """Flush the FIFO and overflow flag. Stop the sender before calling."""
        state = self._command(self.CLEAR)
        self._next_index = 1
        self.overflow_seen = state["overflow"]
        return state

    def read_events(self, max_events=64):
        """Drain at most max_events queued events without waiting for new data.

        Each event is read before its POP command, and the next event is read
        only after that command is acknowledged. Stop the PC sender before
        reading during the first test. A continuously running sender can fill
        any finite FIFO faster than Python drains it; check overflow_seen.
        """
        if isinstance(max_events, bool) or not isinstance(max_events, int):
            raise TypeError("max_events must be an integer")
        if not 0 <= max_events <= self.CAPACITY:
            raise ValueError("max_events must be between 0 and 1024")
        events = []
        for _ in range(max_events):
            state = self.status()
            if not state["nonempty"]:
                break
            if not state["framing_error"] and not state["data_valid"]:
                raise RuntimeError("FIFO head has neither data nor an error flag")
            self._command(self.POP)
            value = state["data"]
            events.append({
                "index": self._next_index,
                "data": value,
                "hex": "" if value is None else "{:02X}".format(value),
                "framing_error": state["framing_error"],
                "data_valid": state["data_valid"],
                "overflow": self.overflow_seen,
            })
            self._next_index += 1
        return events


def export_csv(events, filename):
    """Save decoded events; blank data means no valid byte, not hexadecimal 00.

    There is deliberately no time column: this stage has no FPGA timestamp.
    ``overflow_seen`` describes loss seen by the time that row was retrieved.
    """
    with open(filename, "w", newline="", encoding="utf-8-sig") as stream:
        writer = csv.writer(stream)
        writer.writerow([
            "index", "data_hex", "data_valid", "framing_error", "overflow_seen"
        ])
        for event in events:
            writer.writerow([
                event["index"], event["hex"], int(event["data_valid"]),
                int(event["framing_error"]), int(event["overflow"]),
            ])
    return str(filename)
