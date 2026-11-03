# Run only AFTER Generate Bitstream completes successfully for uart_system_wrapper.
# Exports an identically named .bit/.hwh pair for PYNQ into a NEW export folder.
# It does not rebuild, reset runs, copy stale synthesis results, or overwrite files.

namespace eval uart_stage1_export {
    proc fail {message} { error "UART_EXPORT: $message" }

    proc run {} {
        if {[llength [get_projects -quiet]] != 1} {
            fail "Open the existing pynq_uart.xpr project first."
        }
        set project [current_project]
        set top [get_property TOP [get_filesets sources_1]]
        if {$top ne "uart_system_wrapper"} {
            fail "Expected top uart_system_wrapper, found '$top'. Create the Vivado-managed HDL wrapper and set it as top."
        }
        set runs [get_runs -quiet impl_1]
        if {[llength $runs] != 1} { fail "Cannot find implementation run impl_1." }
        set run [lindex $runs 0]
        set status [get_property STATUS $run]
        if {![string match {*write_bitstream Complete*} $status]} {
            fail "Generate Bitstream is not complete: $status"
        }
        if {[get_property NEEDS_REFRESH $run]} {
            fail "impl_1 is out of date. Rebuild the bitstream before exporting."
        }
        # Run statistics provide a useful gate, but they are not a replacement
        # for reading the full Timing Summary (including unconstrained paths).
        set timing_available 1
        foreach property {STATS.WNS STATS.WHS} {
            if {[lsearch -exact [list_property $run] $property] < 0} {
                set timing_available 0
                continue
            }
            set slack [get_property $property $run]
            if {![string is double -strict $slack]} {
                set timing_available 0
                continue
            }
            if {$slack < 0.0} {
                fail "Timing is not met: $property = $slack ns. Inspect the Timing Summary before deployment."
            }
            puts "UART_EXPORT: $property = $slack ns"
        }
        if {!$timing_available} {
            puts "WARNING: UART_EXPORT could not read every timing statistic. Confirm setup/hold timing in the Implementation Timing Summary before loading this overlay."
        }
        set bit_path [file join [get_property DIRECTORY $run] ${top}.bit]
        if {![file isfile $bit_path]} { fail "Missing bitstream: $bit_path" }

        set project_dir [get_property DIRECTORY $project]
        set project_name [get_property NAME $project]
        # Vivado 2023.2 normally writes HWH under the .gen directory.
        set candidates [list \
            [file join $project_dir ${project_name}.gen sources_1 bd uart_system hw_handoff uart_system.hwh] \
            [file join $project_dir ${project_name}.srcs sources_1 bd uart_system hw_handoff uart_system.hwh]]
        set hwh_path ""
        foreach path $candidates {
            if {[file isfile $path]} { set hwh_path $path; break }
        }
        if {$hwh_path eq ""} {
            fail "uart_system.hwh was not found. Generate the block design Output Products and rebuild. Expected: [lindex $candidates 0]"
        }

        set tag [clock format [clock seconds] -format {%Y%m%d_%H%M%S}]
        set destination [file join $project_dir uart_overlay_export $tag]
        if {[file exists $destination]} {
            fail "Export folder already exists: $destination . Wait one second and run again."
        }
        file mkdir $destination
        file copy $bit_path [file join $destination uart_diag.bit]
        file copy $hwh_path [file join $destination uart_diag.hwh]
        puts "UART_EXPORT: DONE"
        puts "Copy BOTH files to the board's uart_diag folder:"
        puts [file join $destination uart_diag.bit]
        puts [file join $destination uart_diag.hwh]
    }
}

uart_stage1_export::run
