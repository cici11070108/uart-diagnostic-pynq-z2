"""Send one bounded UART test burst from Windows (CH343, e.g. COM5).

Examples from C:\\Users\\cici\\Desktop\\FPGA\\uart_baud_stage2:
  py pc/send_uart_baud.py --port COM5 --baud 9600 --ramp
  py pc/send_uart_baud.py --port COM5 --baud 115200 --break-recovery
Select/apply the SAME baud on the board before sending. Keep 8N1/3.3V wiring.
"""

import argparse
import sys
import time


BAUD_RATES = (9600, 19200, 38400, 57600, 115200, 230400)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--port", required=True, help="CH343 adapter port, e.g. COM5")
    parser.add_argument("--baud", type=int, choices=BAUD_RATES, default=115200)
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--hex", dest="hex_data", help='Hex pairs, e.g. "55 AA 00 FF"')
    mode.add_argument("--ramp", action="store_true", help="Send exactly 64 bytes 00..3F")
    mode.add_argument("--break-recovery", action="store_true",
                      help="Request 20 ms BREAK, wait 100 ms, then send 55 AA")
    args = parser.parse_args(argv)
    try:
        if args.break_recovery:
            payload = bytes.fromhex("55 AA")
        elif args.ramp:
            payload = bytes(range(64))
        else:
            payload = bytes.fromhex("55" if args.hex_data is None else args.hex_data)
    except ValueError:
        parser.error('--hex must contain hex pairs such as "55 AA", without 0x')
    if not 1 <= len(payload) <= 64:
        parser.error("Send 1..64 bytes per test burst")
    try:
        import serial
    except ImportError:
        print("Install pyserial on Windows: py -m pip install pyserial", file=sys.stderr)
        return 2
    try:
        with serial.Serial(port=args.port, baudrate=args.baud,
                           bytesize=serial.EIGHTBITS, parity=serial.PARITY_NONE,
                           stopbits=serial.STOPBITS_ONE, timeout=1, write_timeout=2,
                           xonxoff=False, rtscts=False, dsrdtr=False) as link:
            if args.break_recovery:
                link.send_break(0.02)
                time.sleep(0.1)
            written = link.write(payload)
            link.flush()
    except (serial.SerialException, OSError) as error:
        print("Cannot send on {}: {}".format(args.port, error), file=sys.stderr)
        print("Check the adapter COM port and close other programs using it.", file=sys.stderr)
        return 1
    if written != len(payload):
        print("Incomplete write: {} / {} bytes".format(written, len(payload)), file=sys.stderr)
        return 1
    prefix = "BREAK + " if args.break_recovery else ""
    print("{}Sent {} bytes on {} at {} 8N1".format(prefix, written, args.port, args.baud))
    print(" ".join("{:02X}".format(value) for value in payload))
    if args.break_recovery:
        print("20 ms BREAK and 100 ms gap are software requests, not measured waveform timing.")
    print("Return to 04 panel and click Read. This confirms PC transmission only.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
