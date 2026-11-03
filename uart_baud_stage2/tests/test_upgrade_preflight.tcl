# Run with Tcl 8.6, from any directory. This uses deliberately small Vivado
# command stubs: it tests Tcl parsing and early failure/backup ordering only.
# It does NOT execute Vivado, synthesize the design, or verify tool properties.

if {$::tcl_platform(platform) ne "unix" ||
    [file pathtype {C:/Users/cici/Desktop/FPGA}] ne "relative"} {
    error "This stub test is POSIX-only. Do not run it in Windows or the Vivado Tcl Console."
}

set package_root [file normalize [file join [file dirname [info script]] ..]]
foreach pair {{01_upgrade_baud.tcl uart_baud_upgrade} {02_export_baud.tcl uart_baud_export}} {
    lassign $pair filename ns
    set f [open [file join $package_root vivado $filename] r]
    set body [read $f]
    close $f
    if {![info complete $body]} { error "Incomplete Tcl: $filename" }
    set suffix "${ns}::run \[file dirname \[file normalize \[info script\]\]\]"
    set location [string last $suffix $body]
    if {$location < 0} { error "Expected explicit run entry point in $filename" }
    eval [string range $body 0 [expr {$location - 1}]]
    foreach name [info procs ${ns}::*] {
        # Compile procedure bodies without executing Vivado operations.
        tcl::unsupported::disassemble proc $name
    }
}
set f [open [file join $package_root constraints uart_baud_cdc.xdc] r]
set xdc_body [read $f]
close $f
if {![info complete $xdc_body]} { error "Incomplete CDC Tcl" }
proc ::xdc_parse_only {} $xdc_body
tcl::unsupported::disassemble proc ::xdc_parse_only
puts "PASS: real Tcl 8.6 parser compiled both scripts and CDC statements"

set project_dir {C:/Users/cici/Desktop/FPGA/pynq_uart}
set test_package {C:/Users/cici/Desktop/FPGA/uart_baud_stage2}
set old_package {C:/Users/cici/Desktop/FPGA/uart_board_stage1}
set bd_file "$project_dir/pynq_uart.srcs/sources_1/bd/uart_system/uart_system.bd"
set rx_pins {clk rst rx data_out valid framing_error}
set fifo_pins {clk rst data_in valid_in framing_error_in command status}
set pin_to_net [dict create \
    processing_system7_0/FCLK_CLK0 clock_net \
    uart_rx_0/clk clock_net uart_event_fifo_0/clk clock_net \
    axi_gpio_diag/s_axi_aclk clock_net \
    processing_system7_0/M_AXI_GP0_ACLK clock_net \
    proc_sys_reset_0/slowest_sync_clk clock_net \
    proc_sys_reset_0/peripheral_reset reset_net \
    uart_rx_0/rst reset_net uart_event_fifo_0/rst reset_net \
    uart_rx_0/data_out data_net uart_event_fifo_0/data_in data_net \
    uart_rx_0/valid valid_net uart_event_fifo_0/valid_in valid_net \
    uart_rx_0/framing_error error_net uart_event_fifo_0/framing_error_in error_net \
    uart_event_fifo_0/status status_net axi_gpio_diag/gpio_io_i status_net \
    axi_gpio_diag/gpio2_io_o command_net uart_event_fifo_0/command command_net \
    uart_rx_0/rx rx_net uart_rx_i rx_net]

proc get_projects {args} {
    if {$::case eq "no_project"} { return {} }
    return test_project
}
proc current_project {} { return test_project }
proc get_filesets {name} { return $name }
proc get_runs {args} { return {} }
proc get_property {property object} {
    switch -- $property {
        DIRECTORY { return $::project_dir }
        PART {
            if {$::case eq "wrong_part"} { return xc7z010clg400-1 }
            return xc7z020clg400-1
        }
        TOP { return uart_system_wrapper }
        CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ { return 100.0 }
        CONFIG.CLKS_PER_BIT { return 868 }
        CONFIG.C_IS_DUAL - CONFIG.C_ALL_INPUTS - CONFIG.C_ALL_OUTPUTS_2 { return 1 }
        CONFIG.C_GPIO_WIDTH - CONFIG.C_GPIO2_WIDTH {
            if {$::case eq "wrong_width" && $property eq "CONFIG.C_GPIO2_WIDTH"} { return 16 }
            return 32
        }
        NAME { return $object }
        default { error "Unexpected get_property $property $object" }
    }
}
proc get_files {args} {
    set pattern [lindex $args end]
    if {[string match */uart_system.bd $pattern]} { return $::bd_file }
    if {[string match */uart_rx_cdc.xdc $pattern]} { return "$::old_package/constraints/uart_rx_cdc.xdc" }
    if {[string match */uart_rx_pmoda.xdc $pattern]} { return "$::old_package/constraints/uart_rx_pmoda.xdc" }
    return {}
}
proc open_bd_design {args} {}
proc current_bd_instance {args} {}
proc get_bd_cells {args} {
    set name [lindex $args end]
    if {$name eq "uart_diag_baud_core_0"} {
        if {$::case eq "already_upgraded"} { return $name }
        return {}
    }
    if {$name in {processing_system7_0 proc_sys_reset_0 axi_gpio_diag axi_interconnect_diag uart_rx_0 uart_event_fifo_0}} { return $name }
    error "Unexpected get_bd_cells $args"
}
proc get_bd_pins {args} {
    set option [lsearch -exact $args -of_objects]
    if {$option >= 0} {
        set object [lindex $args [expr {$option + 1}]]
        if {$object in {uart_rx_0 uart_event_fifo_0}} {
            set suffixes [expr {$object eq "uart_rx_0" ? $::rx_pins : $::fifo_pins}]
            if {$::case eq "extra_port" && $object eq "uart_rx_0"} { lappend suffixes surprise }
            set result {}
            foreach suffix $suffixes { lappend result $object/$suffix }
            return $result
        }
        set result {}
        dict for {pin net} $::pin_to_net {
            if {$net eq $object && $pin ne "uart_rx_i"} { lappend result $pin }
        }
        if {$::case eq "extra_connection" && $object eq "data_net"} { lappend result observer/probe }
        return $result
    }
    set name [lindex $args end]
    if {![dict exists $::pin_to_net $name]} { error "Unexpected pin $name" }
    return $name
}
proc get_bd_nets {args} {
    set option [lsearch -exact $args -of_objects]
    if {$option < 0} { error "Unexpected net lookup $args" }
    set object [lindex $args [expr {$option + 1}]]
    if {$::case eq "wrong_clock" && $object eq "uart_rx_0/clk"} { return wrong_clock_net }
    return [dict get $::pin_to_net $object]
}
proc get_bd_ports {args} {
    set option [lsearch -exact $args -of_objects]
    if {$option >= 0} {
        set net [lindex $args [expr {$option + 1}]]
        if {$net eq "rx_net"} { return uart_rx_i }
        return {}
    }
    if {[lindex $args end] ne "uart_rx_i"} { error "Unexpected port lookup $args" }
    return uart_rx_i
}
proc validate_bd_design {} { lappend ::actions validate_bd_design }
proc save_bd_design {} { lappend ::actions save_bd_design }
proc archive_project {args} {
    lappend ::actions archive_project
    error ARCHIVE_GATE_REACHED
}
foreach name {add_files update_compile_order create_bd_cell connect_bd_net delete_bd_objs set_property generate_target regenerate_bd_layout} {
    proc $name {args} [format {
        lappend ::actions %s
        error "Unexpected design mutation before archive gate: %s"
    } $name $name]
}

# Temporary fixtures make the existing script's exact file checks execute.
# C:/... is intentionally a relative fixture on POSIX Tcl; this does not
# pretend to validate actual Windows path canonicalization or Vivado objects.
set prior_cwd [pwd]
set fixture [file join /tmp uart_baud_preflight_[pid]_[clock clicks]]
file mkdir $fixture
cd $fixture
file mkdir "$test_package/rtl" "$test_package/constraints"
foreach relative {rtl/uart_diag_baud_core.v constraints/uart_baud_cdc.xdc} {
    close [open "$test_package/$relative" w]
}

set outcome [catch {
    foreach pair {
        {no_project {Expected exactly one open Vivado project}}
        {wrong_part {Expected PYNQ-Z2 part}}
        {already_upgraded {stage-2 core already exists}}
        {extra_port {Unexpected port list}}
        {wrong_clock {Expected existing connection}}
        {extra_connection {unexpected extra connections}}
        {wrong_width {C_GPIO2_WIDTH is not the tested value}}
    } {
        lassign $pair case expected
        set actions {}
        set failed [catch {uart_baud_upgrade::run "$test_package/vivado"} message]
        if {!$failed || [string first $expected $message] < 0} {
            error "$case failed for an unexpected reason: $message"
        }
        if {[llength $actions] != 0} {
            error "$case reached changes or archive unexpectedly: $actions"
        }
        puts "PASS: $case stopped before archive/design changes"
    }
    set case baseline_ok
    set actions {}
    set failed [catch {uart_baud_upgrade::run "$test_package/vivado"} message]
    if {!$failed || $message ne "ARCHIVE_GATE_REACHED"} {
        error "Valid modeled baseline failed before archive gate: $message"
    }
    if {$actions ne {validate_bd_design save_bd_design archive_project}} {
        error "Unexpected pre-archive ordering: $actions"
    }
    puts "PASS: modeled valid baseline saves existing BD then reaches archive before design replacement"
} error_text error_options]
cd $prior_cwd
file delete -force $fixture
if {$outcome} { return -options $error_options $error_text }
puts "PASS: these are Tcl/stub checks only; real Vivado build and board validation remain required"
