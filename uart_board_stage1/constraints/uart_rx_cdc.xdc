# Implementation-only constraints for the existing uart_rx two-flop synchronizer.
# 01_connect_uart.tcl disables this file for synthesis and enables it for implementation.
# UART RX is asynchronous to FCLK_CLK0. Only the path into rx_meta/D is cut.
# The rx_meta -> rx_sync path remains timed, and both registers get ASYNC_REG.
# These strict names deliberately stop instead of accidentally cutting unrelated logic.

set uart_rx_meta_regs [get_cells -quiet -hierarchical -filter {IS_SEQUENTIAL && NAME =~ */uart_rx_0/*rx_meta_reg}]
set uart_rx_sync_regs [get_cells -quiet -hierarchical -filter {IS_SEQUENTIAL && NAME =~ */uart_rx_0/*rx_sync_reg}]
if {[llength $uart_rx_meta_regs] != 1 || [llength $uart_rx_sync_regs] != 1} {
    error "UART_CDC: expected exactly one rx_meta_reg and one rx_sync_reg under uart_rx_0. The source or synthesized hierarchy differs. Inspect the synthesized register names; do NOT replace this with a broad false-path constraint."
}
set uart_rx_async_port [get_ports -quiet uart_rx_i]
if {[llength $uart_rx_async_port] != 1} {
    error "UART_CDC: expected external input port uart_rx_i."
}
set uart_rx_meta_d [get_pins -quiet -of_objects $uart_rx_meta_regs -filter {REF_PIN_NAME == D}]
if {[llength $uart_rx_meta_d] != 1} {
    error "UART_CDC: could not uniquely identify rx_meta_reg/D."
}
set_property ASYNC_REG TRUE [concat $uart_rx_meta_regs $uart_rx_sync_regs]
set_false_path -from $uart_rx_async_port -to $uart_rx_meta_d
