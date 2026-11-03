"""Send one small 115200-8N1 test burst from Windows to the FPGA receiver.

Install on the PC:  py -m pip install pyserial
Examples:          py pc/send_uart.py --port COM7 --hex 55
                   py pc/send_uart.py --port COM7 --ramp

COM7 is only an example. Select the CH343/USB-TTL adapter's actual port,
not the PYNQ board's USB console port (previously COM6).
"""

import argparse
import sys


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--port", required=True, help="USB-TTL port, e.g. COM7")
    parser.add_argument("--baud", type=int, default=115200, choices=[115200],
                        help="Stage 1 hardware uses fixed 115200 baud")
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--hex", dest="hex_data", help='Hex bytes, e.g. "55 AA 00 FF"')
    mode.add_argument("--ramp", action="store_true", help="Send 64 bytes: 00..3F")
    args = parser.parse_args(argv)

    try:
        payload = bytes(range(64)) if args.ramp else bytes.fromhex(args.hex_data or "55")
    except ValueError:
        parser.error('--hex must contain hex pairs, e.g. "55 AA"; omit the 0x prefix')
    if not 1 <= len(payload) <= 64:
        parser.error("For this first test, send between 1 and 64 bytes per burst")

    try:
        import serial
    except ImportError:
        print("Please install pyserial on this PC first: py -m pip install pyserial",
              file=sys.stderr)
        return 2

    try:
        with serial.Serial(
            port=args.port, baudrate=args.baud,
            bytesize=serial.EIGHTBITS, parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE, timeout=1, write_timeout=2,
            xonxoff=False, rtscts=False, dsrdtr=False,
        ) as link:
            written = link.write(payload)
            link.flush()
    except (serial.SerialException, OSError) as error:
        print("Cannot send on {}: {}".format(args.port, error), file=sys.stderr)
        print("Check the CH343 adapter's COM number and close any program using it.",
              file=sys.stderr)
        return 1
    if written != len(payload):
        print("Incomplete write: {} of {} bytes".format(written, len(payload)),
              file=sys.stderr)
        return 1
    print("Sent {} byte(s) on {} at 115200 8N1:".format(written, args.port))
    print(" ".join("{:02X}".format(value) for value in payload))
    print("Now run the receive cell in the board's Jupyter notebook.")
    print("This message confirms PC transmission only; check the received result separately.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
