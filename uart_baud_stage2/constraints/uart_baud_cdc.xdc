# Stage-2 implementation-only CDC constraints. The upgrade disables the old
# uart_rx_cdc.xdc because its stage-1 hierarchy no longer exists.
# Keep rx_meta -> rx_sync timed; only external asynchronous RX -> first D is cut.
set baud_meta [get_cells -quiet -hierarchical -filter {IS_SEQUENTIAL && NAME =~ */uart_diag_baud_core_0/*rx_meta_reg}]
set baud_sync [get_cells -quiet -hierarchical -filter {IS_SEQUENTIAL && NAME =~ */uart_diag_baud_core_0/*rx_sync_reg}]
if {[llength $baud_meta] != 1 || [llength $baud_sync] != 1} {
    error "UART_BAUD_CDC: expected one rx_meta_reg and one rx_sync_reg under uart_diag_baud_core_0. Send the synthesized register names; do not use a broad false path."
}
set baud_rx_port [get_ports -quiet uart_rx_i]
if {[llength $baud_rx_port] != 1} {
    error "UART_BAUD_CDC: external input uart_rx_i was not found uniquely."
}
set baud_meta_d [get_pins -quiet -of_objects $baud_meta -filter {REF_PIN_NAME == D}]
if {[llength $baud_meta_d] != 1} {
    error "UART_BAUD_CDC: rx_meta_reg/D was not found uniquely."
}
set_property ASYNC_REG TRUE [concat $baud_meta $baud_sync]
set_false_path -from $baud_rx_port -to $baud_meta_d
