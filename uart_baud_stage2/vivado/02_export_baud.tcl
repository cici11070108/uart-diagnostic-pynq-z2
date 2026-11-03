# Run only after Generate Bitstream completes for the upgraded original project.
# Creates one new export folder with all FOUR board files plus real Vivado reports.
namespace eval uart_baud_export {
    proc fail {message} { error "UART_BAUD_EXPORT: $message" }
    proc run {script_dir} {
        if {[llength [get_projects -quiet]] != 1} { fail "Open the upgraded pynq_uart project." }
        set project [current_project]
        set root [file normalize [file join $script_dir ..]]
        set top [get_property TOP [get_filesets sources_1]]
        if {$top ne "uart_system_wrapper"} { fail "Expected uart_system_wrapper, found $top." }
        set bd_files [get_files -quiet */uart_system.bd]
        if {[llength $bd_files] != 1} { fail "Expected exactly one uart_system.bd." }
        open_bd_design [lindex $bd_files 0]
        current_bd_instance /
        if {[llength [get_bd_cells -quiet uart_diag_baud_core_0]] != 1 ||
            [llength [get_bd_cells -quiet uart_rx_0]] != 0} {
            fail "This is not the upgraded stage-2 block design."
        }
        set runs [get_runs -quiet impl_1]
        if {[llength $runs] != 1} { fail "Implementation run impl_1 was not found." }
        set run [lindex $runs 0]
        set status [get_property STATUS $run]
        if {![string match {*write_bitstream Complete*} $status]} {
            fail "Generate Bitstream has not completed: $status"
        }
        if {[get_property NEEDS_REFRESH $run]} {
            fail "Implementation is out of date; regenerate the bitstream first."
        }
        foreach property {STATS.WNS STATS.WHS} {
            if {[lsearch -exact [list_property $run] $property] >= 0} {
                set slack [get_property $property $run]
                if {[string is double -strict $slack]} {
                    if {$slack < 0.0} { fail "Timing failed: $property = $slack ns. Read the timing summary." }
                    puts "UART_BAUD_EXPORT: $property = $slack ns"
                } else {
                    puts "WARNING: $property not numeric; inspect exported timing_summary.rpt before loading."
                }
            }
        }
        set bit [file join [get_property DIRECTORY $run] ${top}.bit]
        if {![file isfile $bit]} { fail "Missing completed bitstream: $bit" }
        set project_dir [get_property DIRECTORY $project]
        set project_name [get_property NAME $project]
        set hwh ""
        foreach candidate [list \
            [file join $project_dir ${project_name}.gen sources_1 bd uart_system hw_handoff uart_system.hwh] \
            [file join $project_dir ${project_name}.srcs sources_1 bd uart_system hw_handoff uart_system.hwh]] {
            if {[file isfile $candidate]} { set hwh $candidate; break }
        }
        if {$hwh eq ""} { fail "uart_system.hwh is missing; regenerate BD output products and rebuild." }
        set python [file join $root board uart_diag_baud.py]
        set notebook [file join $root board 04_uart_baud_panel.ipynb]
        foreach source [list $python $notebook] {
            if {![file isfile $source]} { fail "Missing package file: $source" }
        }
        set tag [clock format [clock seconds] -format {%Y%m%d_%H%M%S}]
        set destination [file join $root export $tag]
        if {[file exists $destination]} { fail "Export folder exists; wait one second and retry." }
        file mkdir [file join $destination reports]
        open_run impl_1
        report_utilization -hierarchical -file [file join $destination reports utilization.rpt]
        report_timing_summary -file [file join $destination reports timing_summary.rpt]
        report_cdc -details -file [file join $destination reports cdc.rpt]
        file copy $bit [file join $destination uart_diag_baud.bit]
        file copy $hwh [file join $destination uart_diag_baud.hwh]
        file copy $python [file join $destination uart_diag_baud.py]
        file copy $notebook [file join $destination 04_uart_baud_panel.ipynb]
        set info [open [file join $destination BUILD_INFO.txt] w]
        puts $info "UART stage 2: runtime-selectable baud, 100 MHz, 8N1"
        puts $info "Project: $project_dir"
        puts $info "Vivado: [version -short]"
        puts $info "Export local time: $tag"
        puts $info "Bitstream source: $bit"
        puts $info "HWH source: $hwh"
        puts $info "Build status: $status"
        puts $info "Baud codes: 0=9600, 1=19200, 2=38400, 3=57600, 4=115200, 5=230400"
        puts $info "Board runtime protocol signature: B0..B5; default B4"
        puts $info "Upload the four files at this folder's root to the board Jupyter folder uart_baud."
        close $info
        puts "UART_BAUD_EXPORT: DONE"
        puts "UART_BAUD_EXPORT: EXPORT_DIR = $destination"
        puts "UART_BAUD_EXPORT: Upload these four files together to Jupyter /uart_baud:"
        foreach name {uart_diag_baud.bit uart_diag_baud.hwh uart_diag_baud.py 04_uart_baud_panel.ipynb} {
            puts [file join $destination $name]
        }
    }
}
uart_baud_export::run [file dirname [file normalize [info script]]]
