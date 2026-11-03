vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_15
vlib questa_lib/msim/processing_system7_vip_v1_0_17
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_14
vlib questa_lib/msim/xlconstant_v1_1_8
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_31
vlib questa_lib/msim/generic_baseblocks_v2_1_1
vlib questa_lib/msim/fifo_generator_v13_2_9
vlib questa_lib/msim/axi_data_fifo_v2_1_28
vlib questa_lib/msim/axi_register_slice_v2_1_29
vlib questa_lib/msim/axi_protocol_converter_v2_1_29

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 questa_lib/msim/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 questa_lib/msim/processing_system7_vip_v1_0_17
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 questa_lib/msim/proc_sys_reset_v5_0_14
vmap xlconstant_v1_1_8 questa_lib/msim/xlconstant_v1_1_8
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_31 questa_lib/msim/axi_gpio_v2_0_31
vmap generic_baseblocks_v2_1_1 questa_lib/msim/generic_baseblocks_v2_1_1
vmap fifo_generator_v13_2_9 questa_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 questa_lib/msim/axi_data_fifo_v2_1_28
vmap axi_register_slice_v2_1_29 questa_lib/msim/axi_register_slice_v2_1_29
vmap axi_protocol_converter_v2_1_29 questa_lib/msim/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/uart_system/ip/uart_system_processing_system7_0_0/sim/uart_system_processing_system7_0_0.v" \
"../../../bd/uart_system/ip/uart_system_uart_rx_0_0/sim/uart_system_uart_rx_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/uart_system/ip/uart_system_proc_sys_reset_0_0/sim/uart_system_proc_sys_reset_0_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/uart_system/ip/uart_system_xlconstant_0_0/sim/uart_system_xlconstant_0_0.v" \
"../../../bd/uart_system/ip/uart_system_uart_event_fifo_0_0/sim/uart_system_uart_event_fifo_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_31  -93  \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6fbe/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/uart_system/ip/uart_system_axi_gpio_diag_0/sim/uart_system_axi_gpio_diag_0.vhd" \

vlog -work generic_baseblocks_v2_1_1  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/ec67/hdl" "+incdir+../../../../pynq_uart.gen/sources_1/bd/uart_system/ipshared/6b2b/hdl" "+incdir+E:/vivado/2023vivado/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/uart_system/ip/uart_system_auto_pc_0/sim/uart_system_auto_pc_0.v" \
"../../../bd/uart_system/sim/uart_system.v" \

vlog -work xil_defaultlib \
"glbl.v"

