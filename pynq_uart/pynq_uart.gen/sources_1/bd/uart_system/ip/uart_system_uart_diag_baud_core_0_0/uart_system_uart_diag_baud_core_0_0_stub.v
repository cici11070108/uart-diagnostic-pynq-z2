// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Oct 29 20:35:49 2026
// Host        : cici-legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cici/Desktop/FPGA/pynq_uart/pynq_uart.gen/sources_1/bd/uart_system/ip/uart_system_uart_diag_baud_core_0_0/uart_system_uart_diag_baud_core_0_0_stub.v
// Design      : uart_system_uart_diag_baud_core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_diag_baud_core,Vivado 2023.2" *)
module uart_system_uart_diag_baud_core_0_0(clk, rst, rx, command, status)
/* synthesis syn_black_box black_box_pad_pin="rst,rx,command[31:0],status[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input rx;
  input [31:0]command;
  output [31:0]status;
endmodule
