# PYNQ-Z2 only: UART input is PMODA pin 1 (JA1_P), FPGA package pin Y18.
# Manufacturer manual v1.1, section 16, Table 13:
# https://dpoauwgwqsy2x.cloudfront.net/Download/PYNQ_Z2_User_Manual_v1.1.pdf
# UART idle level is HIGH. Use a verified 3.3 V USB-TTL TX signal.
# Connect USB-TTL GND to PMODA pin 5 or 11 (GND), never pin 6 or 12 (3V3).
# No USB-TTL VCC connection is needed: both devices have their own USB supply.

set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33 PULLUP TRUE} [get_ports uart_rx_i]
