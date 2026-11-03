# UART diagnostic stage 1: extend the existing uart_system block design.
# Target: Vivado 2023.2, PYNQ-Z2, existing project pynq_uart.
# In Vivado Tcl Console, after File > Project > Archive:
# source {C:/Users/cici/Desktop/FPGA/uart_board_stage1/vivado/01_connect_uart.tcl}
# This script adds logic and saves the BD. It does NOT start synthesis.
# It does not replace uart_rx.v or alter the existing CLKS_PER_BIT parameter.

namespace eval uart_stage1 {
    proc fail {message} {
        error "UART_STAGE1: $message"
    }

    proc one {objects description} {
        if {[llength $objects] != 1} {
            fail "Expected one $description; found [llength $objects]. Stop and send the complete Tcl error."
        }
        return [lindex $objects 0]
    }

    proc pin {name} {
        return [one [get_bd_pins -quiet $name] "BD pin $name"]
    }

    proc same_net {first second} {
        set a [get_bd_nets -quiet -of_objects [pin $first]]
        set b [get_bd_nets -quiet -of_objects [pin $second]]
        if {[llength $a] != 1 || [llength $b] != 1 || $a ne $b} {
            fail "Existing connection must be $first -> $second. Existing wires were not changed."
        }
    }

    proc unattached_pin {name} {
        if {[llength [get_bd_nets -quiet -of_objects [pin $name]]] != 0} {
            fail "$name already has a wire. This script will not replace existing connections."
        }
    }

    proc run {script_dir} {
        if {[llength [get_projects -quiet]] != 1} {
            fail "Open the existing pynq_uart.xpr project first."
        }
        set project [current_project]
        set part [get_property PART $project]
        if {![string equal -nocase $part "xc7z020clg400-1"]} {
            fail "Expected PYNQ-Z2 part xc7z020clg400-1, but project uses $part."
        }

        set bd_file [one [get_files -quiet */uart_system.bd] "uart_system.bd file"]
        open_bd_design $bd_file
        current_bd_instance /

        foreach name {processing_system7_0 uart_rx_0 proc_sys_reset_0 xlconstant_0} {
            one [get_bd_cells -quiet $name] "existing block $name"
        }
        foreach name {uart_event_fifo_0 axi_gpio_diag axi_interconnect_diag} {
            if {[llength [get_bd_cells -quiet $name]] != 0} {
                fail "$name already exists. The add-on was already run or partly added. Do not run it twice; send the current diagram and Tcl output."
            }
        }
        if {[llength [get_bd_ports -quiet uart_rx_i]] != 0} {
            fail "An external port uart_rx_i already exists. It was not changed."
        }

        set root [file normalize [file join $script_dir ..]]
        set fifo_rtl [file join $root rtl uart_event_fifo.v]
        set rx_xdc [file join $root constraints uart_rx_pmoda.xdc]
        set cdc_xdc [file join $root constraints uart_rx_cdc.xdc]
        foreach path [list $fifo_rtl $rx_xdc $cdc_xdc] {
            if {![file isfile $path]} {
                fail "Missing package file: $path . Extract the entire ZIP before running this script."
            }
        }

        set receiver [get_bd_cells uart_rx_0]
        set divisor [get_property CONFIG.CLKS_PER_BIT $receiver]
        if {$divisor ne "868"} {
            fail "Existing uart_rx_0 CLKS_PER_BIT is '$divisor', expected 868. No parameters were overwritten."
        }
        set ps [get_bd_cells processing_system7_0]
        set frequency [get_property CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ $ps]
        if {![string is double -strict $frequency] || abs($frequency - 100.0) > 0.001} {
            fail "Existing FCLK_CLK0 frequency is '$frequency' MHz, expected 100 MHz. No clock settings were changed."
        }

        same_net processing_system7_0/FCLK_CLK0 uart_rx_0/clk
        same_net processing_system7_0/FCLK_CLK0 processing_system7_0/M_AXI_GP0_ACLK
        same_net processing_system7_0/FCLK_CLK0 proc_sys_reset_0/slowest_sync_clk
        same_net processing_system7_0/FCLK_RESET0_N proc_sys_reset_0/ext_reset_in
        same_net proc_sys_reset_0/peripheral_reset uart_rx_0/rst
        same_net xlconstant_0/dout proc_sys_reset_0/dcm_locked
        if {[get_property CONFIG.CONST_VAL [get_bd_cells xlconstant_0]] ne "1"} {
            fail "xlconstant_0 driving dcm_locked must be 1. Existing constant was not changed."
        }
        foreach name {rx data_out valid framing_error} {
            unattached_pin uart_rx_0/$name
        }
        set ps_axi [one [get_bd_intf_pins -quiet processing_system7_0/M_AXI_GP0] "PS M_AXI_GP0"]
        if {[llength [get_bd_intf_nets -quiet -of_objects $ps_axi]] != 0} {
            fail "PS M_AXI_GP0 is already connected. This script will not replace an existing AXI system."
        }
        foreach ip {xilinx.com:ip:axi_gpio:2.0 xilinx.com:ip:axi_interconnect:2.1} {
            if {[llength [get_ipdefs -all -quiet $ip]] == 0} {
                fail "Required IP $ip is unavailable in this Vivado installation."
            }
        }

        # Fix receiver metadata before adding blocks, so a read-only property
        # cannot leave an otherwise half-created AXI system behind.
        # Actual uart_rx RTL uses "if (rst)": this is metadata, not an inverter.
        set rst_pin [pin uart_rx_0/rst]
        if {[lsearch -exact [list_property $rst_pin] CONFIG.POLARITY] >= 0} {
            if {[catch {set_property CONFIG.POLARITY ACTIVE_HIGH $rst_pin} reason]} {
                fail "Cannot set the existing UART rst metadata ACTIVE_HIGH. No new blocks were added. Add the ACTIVE_HIGH reset interface attribute to uart_rx.v, refresh the RTL module, then run again. Details: $reason"
            }
        }

        puts "UART_STAGE1: preflight passed (100 MHz, divisor 868). Adding the receive buffer and PS access."
        if {[llength [get_files -quiet $fifo_rtl]] == 0} {
            add_files -fileset sources_1 -norecurse $fifo_rtl
        }
        update_compile_order -fileset sources_1
        create_bd_cell -type module -reference uart_event_fifo uart_event_fifo_0

        create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_diag
        set_property -dict [list \
            CONFIG.C_IS_DUAL {1} \
            CONFIG.C_GPIO_WIDTH {32} \
            CONFIG.C_ALL_INPUTS {1} \
            CONFIG.C_ALL_OUTPUTS {0} \
            CONFIG.C_GPIO2_WIDTH {32} \
            CONFIG.C_ALL_INPUTS_2 {0} \
            CONFIG.C_ALL_OUTPUTS_2 {1} \
            CONFIG.C_DOUT_DEFAULT_2 {0x00000000} \
            CONFIG.C_INTERRUPT_PRESENT {0}] [get_bd_cells axi_gpio_diag]

        create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_diag
        set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_diag]
        connect_bd_intf_net $ps_axi [get_bd_intf_pins axi_interconnect_diag/S00_AXI]
        connect_bd_intf_net [get_bd_intf_pins axi_interconnect_diag/M00_AXI] [get_bd_intf_pins axi_gpio_diag/S_AXI]

        # All new logic shares the existing FCLK_CLK0 domain.
        foreach target {
            uart_event_fifo_0/clk
            axi_gpio_diag/s_axi_aclk
            axi_interconnect_diag/ACLK
            axi_interconnect_diag/S00_ACLK
            axi_interconnect_diag/M00_ACLK
        } {
            connect_bd_net [pin processing_system7_0/FCLK_CLK0] [pin $target]
        }

        # RTL uses active-HIGH reset; AXI IP uses active-LOW reset.
        connect_bd_net [pin proc_sys_reset_0/peripheral_reset] [pin uart_event_fifo_0/rst]
        foreach target {
            axi_gpio_diag/s_axi_aresetn
            axi_interconnect_diag/S00_ARESETN
            axi_interconnect_diag/M00_ARESETN
        } {
            connect_bd_net [pin proc_sys_reset_0/peripheral_aresetn] [pin $target]
        }
        connect_bd_net [pin proc_sys_reset_0/interconnect_aresetn] [pin axi_interconnect_diag/ARESETN]

        connect_bd_net [pin uart_rx_0/data_out] [pin uart_event_fifo_0/data_in]
        connect_bd_net [pin uart_rx_0/valid] [pin uart_event_fifo_0/valid_in]
        connect_bd_net [pin uart_rx_0/framing_error] [pin uart_event_fifo_0/framing_error_in]
        connect_bd_net [pin uart_event_fifo_0/status] [pin axi_gpio_diag/gpio_io_i]
        connect_bd_net [pin axi_gpio_diag/gpio2_io_o] [pin uart_event_fifo_0/command]

        create_bd_port -dir I uart_rx_i
        connect_bd_net [get_bd_ports uart_rx_i] [pin uart_rx_0/rx]
        if {[llength [get_files -quiet $rx_xdc]] == 0} {
            add_files -fileset constrs_1 -norecurse $rx_xdc
        }
        if {[llength [get_files -quiet $cdc_xdc]] == 0} {
            add_files -fileset constrs_1 -norecurse $cdc_xdc
        }
        set_property USED_IN_SYNTHESIS false [get_files $cdc_xdc]
        set_property USED_IN_IMPLEMENTATION true [get_files $cdc_xdc]
        set_property PROCESSING_ORDER LATE [get_files $cdc_xdc]

        # Let Vivado assign a free address; Python obtains it from the HWH file.
        puts "UART_STAGE1: assigning AXI addresses and validating the design."
        assign_bd_address
        validate_bd_design
        set reset_block [get_bd_cells proc_sys_reset_0]
        if {[lsearch -exact [list_property $reset_block] CONFIG.C_EXT_RESET_HIGH] >= 0} {
            if {[get_property CONFIG.C_EXT_RESET_HIGH $reset_block] ne "0"} {
                fail "ext_reset_in is fed by FCLK_RESET0_N but is not configured active LOW after validation. Send the reset block properties before building."
            }
        }
        save_bd_design
        regenerate_bd_layout
        puts "UART_STAGE1: DONE. Block design validated and saved."
        puts "Next: Generate Output Products, Create HDL Wrapper (Vivado managed), then Generate Bitstream."
        puts "After a successful bitstream build, run vivado/02_export_overlay.tcl."
        puts "External UART input: uart_rx_i -> PYNQ-Z2 PMODA pin 1, FPGA Y18 (3.3 V logic)."
    }
}

uart_stage1::run [file dirname [file normalize [info script]]]
