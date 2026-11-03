// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Oct 29 20:35:49 2026
// Host        : cici-legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cici/Desktop/FPGA/pynq_uart/pynq_uart.gen/sources_1/bd/uart_system/ip/uart_system_uart_diag_baud_core_0_0/uart_system_uart_diag_baud_core_0_0_sim_netlist.v
// Design      : uart_system_uart_diag_baud_core_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_system_uart_diag_baud_core_0_0,uart_diag_baud_core,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_diag_baud_core,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_system_uart_diag_baud_core_0_0
   (clk,
    rst,
    rx,
    command,
    status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input rx;
  input [31:0]command;
  output [31:0]status;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [31:0]command;
  wire rst;
  wire rx;
  wire [26:0]\^status ;

  assign status[31] = \<const1> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const1> ;
  assign status[28] = \<const1> ;
  assign status[27] = \<const0> ;
  assign status[26:0] = \^status [26:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  uart_system_uart_diag_baud_core_0_0_uart_diag_baud_core inst
       (.\baud_code_reg[0] (\^status [24]),
        .\baud_code_reg[1] (\^status [25]),
        .\baud_code_reg[2] (\^status [26]),
        .clk(clk),
        .command(command[5:0]),
        .\occupancy_reg[3] (\^status [12:0]),
        .rst(rst),
        .rx(rx),
        .status(\^status [23:13]));
endmodule

(* ORIG_REF_NAME = "uart_baud_event_fifo" *) 
module uart_system_uart_diag_baud_core_0_0_uart_baud_event_fifo
   (ack_toggle_reg_0,
    \occupancy_reg[3]_0 ,
    Q,
    command_2_sp_1,
    DI,
    \baud_code_reg[0]_0 ,
    \baud_code_reg[1]_0 ,
    rst_0,
    \baud_code_reg[1]_1 ,
    \baud_code_reg[2]_0 ,
    CO,
    state10_in,
    i__carry_i_5__0_0,
    S,
    \count_reg[15] ,
    rst,
    clk,
    command,
    valid,
    framing_error,
    \occupancy_reg[4]_0 ,
    \state1_inferred__0/i__carry__0 ,
    E,
    p_1_in);
  output ack_toggle_reg_0;
  output [11:0]\occupancy_reg[3]_0 ;
  output [10:0]Q;
  output command_2_sp_1;
  output [0:0]DI;
  output \baud_code_reg[0]_0 ;
  output \baud_code_reg[1]_0 ;
  output rst_0;
  output [12:0]\baud_code_reg[1]_1 ;
  output [1:0]\baud_code_reg[2]_0 ;
  output [0:0]CO;
  output [11:0]state10_in;
  output [0:0]i__carry_i_5__0_0;
  output [0:0]S;
  output [0:0]\count_reg[15] ;
  input rst;
  input clk;
  input [5:0]command;
  input valid;
  input framing_error;
  input [0:0]\occupancy_reg[4]_0 ;
  input [0:0]\state1_inferred__0/i__carry__0 ;
  input [0:0]E;
  input [7:0]p_1_in;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [0:0]S;
  wire ack_toggle_reg_0;
  wire \baud_code[0]_i_1_n_0 ;
  wire \baud_code[1]_i_1_n_0 ;
  wire \baud_code[2]_i_1_n_0 ;
  wire \baud_code_reg[0]_0 ;
  wire \baud_code_reg[1]_0 ;
  wire [12:0]\baud_code_reg[1]_1 ;
  wire [1:0]\baud_code_reg[2]_0 ;
  wire baud_requested;
  wire clk;
  wire [5:4]clocks_per_bit;
  wire [5:0]command;
  wire command_2_sn_1;
  wire [0:0]\count_reg[15] ;
  wire framing_error;
  wire [8:8]head0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_10__0_n_0;
  wire i__carry_i_11__0_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12__0_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13__0_n_0;
  wire i__carry_i_14__0_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15__0_n_0;
  wire i__carry_i_16__0_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17__0_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18__0_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19__0_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_20__0_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_21__0_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22__0_n_0;
  wire i__carry_i_22_n_0;
  wire [0:0]i__carry_i_5__0_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__0_n_1;
  wire i__carry_i_5__0_n_2;
  wire i__carry_i_5__0_n_3;
  wire i__carry_i_5_n_0;
  wire i__carry_i_5_n_1;
  wire i__carry_i_5_n_2;
  wire i__carry_i_5_n_3;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__0_n_1;
  wire i__carry_i_6__0_n_2;
  wire i__carry_i_6__0_n_3;
  wire i__carry_i_6_n_0;
  wire i__carry_i_6_n_1;
  wire i__carry_i_6_n_2;
  wire i__carry_i_6_n_3;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__0_n_1;
  wire i__carry_i_7__0_n_2;
  wire i__carry_i_7__0_n_3;
  wire i__carry_i_7_n_0;
  wire i__carry_i_7_n_1;
  wire i__carry_i_7_n_2;
  wire i__carry_i_7_n_3;
  wire i__carry_i_9__0_n_0;
  wire i__carry_i_9_n_0;
  wire memory_reg_0_63_0_2_i_4_n_0;
  wire memory_reg_0_63_0_2_i_5_n_0;
  wire memory_reg_0_63_0_2_i_6_n_0;
  wire memory_reg_0_63_0_2_n_0;
  wire memory_reg_0_63_0_2_n_1;
  wire memory_reg_0_63_0_2_n_2;
  wire memory_reg_0_63_3_5_n_0;
  wire memory_reg_0_63_3_5_n_1;
  wire memory_reg_0_63_3_5_n_2;
  wire memory_reg_0_63_6_8_n_0;
  wire memory_reg_0_63_6_8_n_1;
  wire memory_reg_0_63_6_8_n_2;
  wire memory_reg_128_191_0_2_i_1_n_0;
  wire memory_reg_128_191_0_2_n_0;
  wire memory_reg_128_191_0_2_n_1;
  wire memory_reg_128_191_0_2_n_2;
  wire memory_reg_128_191_3_5_n_0;
  wire memory_reg_128_191_3_5_n_1;
  wire memory_reg_128_191_3_5_n_2;
  wire memory_reg_128_191_6_8_n_0;
  wire memory_reg_128_191_6_8_n_1;
  wire memory_reg_128_191_6_8_n_2;
  wire memory_reg_192_255_0_2_i_1_n_0;
  wire memory_reg_192_255_0_2_n_0;
  wire memory_reg_192_255_0_2_n_1;
  wire memory_reg_192_255_0_2_n_2;
  wire memory_reg_192_255_3_5_n_0;
  wire memory_reg_192_255_3_5_n_1;
  wire memory_reg_192_255_3_5_n_2;
  wire memory_reg_192_255_6_8_n_0;
  wire memory_reg_192_255_6_8_n_1;
  wire memory_reg_192_255_6_8_n_2;
  wire memory_reg_256_319_0_2_i_1_n_0;
  wire memory_reg_256_319_0_2_n_0;
  wire memory_reg_256_319_0_2_n_1;
  wire memory_reg_256_319_0_2_n_2;
  wire memory_reg_256_319_3_5_n_0;
  wire memory_reg_256_319_3_5_n_1;
  wire memory_reg_256_319_3_5_n_2;
  wire memory_reg_256_319_6_8_n_0;
  wire memory_reg_256_319_6_8_n_1;
  wire memory_reg_256_319_6_8_n_2;
  wire memory_reg_320_383_0_2_i_1_n_0;
  wire memory_reg_320_383_0_2_n_0;
  wire memory_reg_320_383_0_2_n_1;
  wire memory_reg_320_383_0_2_n_2;
  wire memory_reg_320_383_3_5_n_0;
  wire memory_reg_320_383_3_5_n_1;
  wire memory_reg_320_383_3_5_n_2;
  wire memory_reg_320_383_6_8_n_0;
  wire memory_reg_320_383_6_8_n_1;
  wire memory_reg_320_383_6_8_n_2;
  wire memory_reg_384_447_0_2_i_1_n_0;
  wire memory_reg_384_447_0_2_n_0;
  wire memory_reg_384_447_0_2_n_1;
  wire memory_reg_384_447_0_2_n_2;
  wire memory_reg_384_447_3_5_n_0;
  wire memory_reg_384_447_3_5_n_1;
  wire memory_reg_384_447_3_5_n_2;
  wire memory_reg_384_447_6_8_n_0;
  wire memory_reg_384_447_6_8_n_1;
  wire memory_reg_384_447_6_8_n_2;
  wire memory_reg_448_511_0_2_i_1_n_0;
  wire memory_reg_448_511_0_2_n_0;
  wire memory_reg_448_511_0_2_n_1;
  wire memory_reg_448_511_0_2_n_2;
  wire memory_reg_448_511_3_5_n_0;
  wire memory_reg_448_511_3_5_n_1;
  wire memory_reg_448_511_3_5_n_2;
  wire memory_reg_448_511_6_8_n_0;
  wire memory_reg_448_511_6_8_n_1;
  wire memory_reg_448_511_6_8_n_2;
  wire memory_reg_512_575_0_2_i_1_n_0;
  wire memory_reg_512_575_0_2_n_0;
  wire memory_reg_512_575_0_2_n_1;
  wire memory_reg_512_575_0_2_n_2;
  wire memory_reg_512_575_3_5_n_0;
  wire memory_reg_512_575_3_5_n_1;
  wire memory_reg_512_575_3_5_n_2;
  wire memory_reg_512_575_6_8_n_0;
  wire memory_reg_512_575_6_8_n_1;
  wire memory_reg_512_575_6_8_n_2;
  wire memory_reg_576_639_0_2_i_1_n_0;
  wire memory_reg_576_639_0_2_n_0;
  wire memory_reg_576_639_0_2_n_1;
  wire memory_reg_576_639_0_2_n_2;
  wire memory_reg_576_639_3_5_n_0;
  wire memory_reg_576_639_3_5_n_1;
  wire memory_reg_576_639_3_5_n_2;
  wire memory_reg_576_639_6_8_n_0;
  wire memory_reg_576_639_6_8_n_1;
  wire memory_reg_576_639_6_8_n_2;
  wire memory_reg_640_703_0_2_i_1_n_0;
  wire memory_reg_640_703_0_2_n_0;
  wire memory_reg_640_703_0_2_n_1;
  wire memory_reg_640_703_0_2_n_2;
  wire memory_reg_640_703_3_5_n_0;
  wire memory_reg_640_703_3_5_n_1;
  wire memory_reg_640_703_3_5_n_2;
  wire memory_reg_640_703_6_8_n_0;
  wire memory_reg_640_703_6_8_n_1;
  wire memory_reg_640_703_6_8_n_2;
  wire memory_reg_64_127_0_2_i_1_n_0;
  wire memory_reg_64_127_0_2_n_0;
  wire memory_reg_64_127_0_2_n_1;
  wire memory_reg_64_127_0_2_n_2;
  wire memory_reg_64_127_3_5_n_0;
  wire memory_reg_64_127_3_5_n_1;
  wire memory_reg_64_127_3_5_n_2;
  wire memory_reg_64_127_6_8_n_0;
  wire memory_reg_64_127_6_8_n_1;
  wire memory_reg_64_127_6_8_n_2;
  wire memory_reg_704_767_0_2_i_1_n_0;
  wire memory_reg_704_767_0_2_n_0;
  wire memory_reg_704_767_0_2_n_1;
  wire memory_reg_704_767_0_2_n_2;
  wire memory_reg_704_767_3_5_n_0;
  wire memory_reg_704_767_3_5_n_1;
  wire memory_reg_704_767_3_5_n_2;
  wire memory_reg_704_767_6_8_n_0;
  wire memory_reg_704_767_6_8_n_1;
  wire memory_reg_704_767_6_8_n_2;
  wire memory_reg_768_831_0_2_i_1_n_0;
  wire memory_reg_768_831_0_2_n_0;
  wire memory_reg_768_831_0_2_n_1;
  wire memory_reg_768_831_0_2_n_2;
  wire memory_reg_768_831_3_5_n_0;
  wire memory_reg_768_831_3_5_n_1;
  wire memory_reg_768_831_3_5_n_2;
  wire memory_reg_768_831_6_8_n_0;
  wire memory_reg_768_831_6_8_n_1;
  wire memory_reg_768_831_6_8_n_2;
  wire memory_reg_832_895_0_2_i_1_n_0;
  wire memory_reg_832_895_0_2_n_0;
  wire memory_reg_832_895_0_2_n_1;
  wire memory_reg_832_895_0_2_n_2;
  wire memory_reg_832_895_3_5_n_0;
  wire memory_reg_832_895_3_5_n_1;
  wire memory_reg_832_895_3_5_n_2;
  wire memory_reg_832_895_6_8_n_0;
  wire memory_reg_832_895_6_8_n_1;
  wire memory_reg_832_895_6_8_n_2;
  wire memory_reg_896_959_0_2_i_1_n_0;
  wire memory_reg_896_959_0_2_n_0;
  wire memory_reg_896_959_0_2_n_1;
  wire memory_reg_896_959_0_2_n_2;
  wire memory_reg_896_959_3_5_n_0;
  wire memory_reg_896_959_3_5_n_1;
  wire memory_reg_896_959_3_5_n_2;
  wire memory_reg_896_959_6_8_n_0;
  wire memory_reg_896_959_6_8_n_1;
  wire memory_reg_896_959_6_8_n_2;
  wire memory_reg_960_1023_0_2_i_1_n_0;
  wire memory_reg_960_1023_0_2_n_0;
  wire memory_reg_960_1023_0_2_n_1;
  wire memory_reg_960_1023_0_2_n_2;
  wire memory_reg_960_1023_3_5_n_0;
  wire memory_reg_960_1023_3_5_n_1;
  wire memory_reg_960_1023_3_5_n_2;
  wire memory_reg_960_1023_6_8_n_0;
  wire memory_reg_960_1023_6_8_n_1;
  wire memory_reg_960_1023_6_8_n_2;
  wire new_command;
  wire [10:0]occupancy;
  wire \occupancy[10]_i_2_n_0 ;
  wire \occupancy[10]_i_6_n_0 ;
  wire \occupancy[10]_i_7_n_0 ;
  wire \occupancy[10]_i_8_n_0 ;
  wire \occupancy[4]_i_3_n_0 ;
  wire \occupancy[4]_i_4_n_0 ;
  wire \occupancy[4]_i_5_n_0 ;
  wire \occupancy[4]_i_6_n_0 ;
  wire \occupancy[8]_i_2_n_0 ;
  wire \occupancy[8]_i_3_n_0 ;
  wire \occupancy[8]_i_4_n_0 ;
  wire \occupancy[8]_i_5_n_0 ;
  wire occupancy_0;
  wire \occupancy_reg[10]_i_3_n_3 ;
  wire [11:0]\occupancy_reg[3]_0 ;
  wire [0:0]\occupancy_reg[4]_0 ;
  wire \occupancy_reg[4]_i_1_n_0 ;
  wire \occupancy_reg[4]_i_1_n_1 ;
  wire \occupancy_reg[4]_i_1_n_2 ;
  wire \occupancy_reg[4]_i_1_n_3 ;
  wire \occupancy_reg[8]_i_1_n_0 ;
  wire \occupancy_reg[8]_i_1_n_1 ;
  wire \occupancy_reg[8]_i_1_n_2 ;
  wire \occupancy_reg[8]_i_1_n_3 ;
  wire overflow_i_1_n_0;
  wire overflow_i_2_n_0;
  wire [9:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [7:0]p_1_in;
  wire pop_accepted;
  wire \read_pointer[9]_i_3_n_0 ;
  wire [9:0]read_pointer_reg;
  wire rst;
  wire rst_0;
  wire rx_flush;
  wire [11:0]state10_in;
  wire [0:0]\state1_inferred__0/i__carry__0 ;
  wire [0:0]state2;
  wire \status[0]_INST_0_i_1_n_0 ;
  wire \status[0]_INST_0_i_2_n_0 ;
  wire \status[0]_INST_0_i_3_n_0 ;
  wire \status[0]_INST_0_i_4_n_0 ;
  wire \status[0]_INST_0_i_5_n_0 ;
  wire \status[12]_INST_0_i_2_n_0 ;
  wire \status[12]_INST_0_i_3_n_0 ;
  wire \status[12]_INST_0_i_4_n_0 ;
  wire \status[12]_INST_0_i_5_n_0 ;
  wire \status[12]_INST_0_i_6_n_0 ;
  wire \status[12]_INST_0_i_7_n_0 ;
  wire \status[1]_INST_0_i_1_n_0 ;
  wire \status[1]_INST_0_i_2_n_0 ;
  wire \status[1]_INST_0_i_3_n_0 ;
  wire \status[1]_INST_0_i_4_n_0 ;
  wire \status[1]_INST_0_i_5_n_0 ;
  wire \status[2]_INST_0_i_1_n_0 ;
  wire \status[2]_INST_0_i_2_n_0 ;
  wire \status[2]_INST_0_i_3_n_0 ;
  wire \status[2]_INST_0_i_4_n_0 ;
  wire \status[2]_INST_0_i_5_n_0 ;
  wire \status[3]_INST_0_i_1_n_0 ;
  wire \status[3]_INST_0_i_2_n_0 ;
  wire \status[3]_INST_0_i_3_n_0 ;
  wire \status[3]_INST_0_i_4_n_0 ;
  wire \status[3]_INST_0_i_5_n_0 ;
  wire \status[4]_INST_0_i_1_n_0 ;
  wire \status[4]_INST_0_i_2_n_0 ;
  wire \status[4]_INST_0_i_3_n_0 ;
  wire \status[4]_INST_0_i_4_n_0 ;
  wire \status[4]_INST_0_i_5_n_0 ;
  wire \status[5]_INST_0_i_1_n_0 ;
  wire \status[5]_INST_0_i_2_n_0 ;
  wire \status[5]_INST_0_i_3_n_0 ;
  wire \status[5]_INST_0_i_4_n_0 ;
  wire \status[5]_INST_0_i_5_n_0 ;
  wire \status[6]_INST_0_i_1_n_0 ;
  wire \status[6]_INST_0_i_2_n_0 ;
  wire \status[6]_INST_0_i_3_n_0 ;
  wire \status[6]_INST_0_i_4_n_0 ;
  wire \status[6]_INST_0_i_5_n_0 ;
  wire \status[7]_INST_0_i_1_n_0 ;
  wire \status[7]_INST_0_i_2_n_0 ;
  wire \status[7]_INST_0_i_3_n_0 ;
  wire \status[7]_INST_0_i_4_n_0 ;
  wire \status[7]_INST_0_i_5_n_0 ;
  wire \status[9]_INST_0_i_1_n_0 ;
  wire valid;
  wire \write_pointer[9]_i_3_n_0 ;
  wire [9:0]write_pointer_reg;
  wire [3:0]NLW_i__carry__0_i_3_CO_UNCONNECTED;
  wire [3:1]NLW_i__carry__0_i_3_O_UNCONNECTED;
  wire [3:1]NLW_i__carry__0_i_3__0_CO_UNCONNECTED;
  wire [3:0]NLW_i__carry__0_i_3__0_O_UNCONNECTED;
  wire NLW_memory_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_memory_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_memory_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire [3:1]\NLW_occupancy_reg[10]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_occupancy_reg[10]_i_3_O_UNCONNECTED ;

  assign command_2_sp_1 = command_2_sn_1;
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(rst),
        .I1(rx_flush),
        .O(rst_0));
  FDRE ack_toggle_reg
       (.C(clk),
        .CE(1'b1),
        .D(command[0]),
        .Q(ack_toggle_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baud_code[0]_i_1 
       (.I0(command[3]),
        .I1(baud_requested),
        .I2(\baud_code_reg[0]_0 ),
        .O(\baud_code[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baud_code[1]_i_1 
       (.I0(command[4]),
        .I1(baud_requested),
        .I2(\baud_code_reg[1]_0 ),
        .O(\baud_code[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \baud_code[2]_i_1 
       (.I0(command[5]),
        .I1(baud_requested),
        .I2(DI),
        .O(\baud_code[2]_i_1_n_0 ));
  FDRE \baud_code_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\baud_code[0]_i_1_n_0 ),
        .Q(\baud_code_reg[0]_0 ),
        .R(rst));
  FDRE \baud_code_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\baud_code[1]_i_1_n_0 ),
        .Q(\baud_code_reg[1]_0 ),
        .R(rst));
  FDSE \baud_code_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\baud_code[2]_i_1_n_0 ),
        .Q(DI),
        .S(rst));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(i__carry_i_5__0_0),
        .I1(\state1_inferred__0/i__carry__0 ),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__0
       (.I0(CO),
        .I1(\state1_inferred__0/i__carry__0 ),
        .O(\count_reg[15] ));
  CARRY4 i__carry__0_i_3
       (.CI(i__carry_i_5_n_0),
        .CO({NLW_i__carry__0_i_3_CO_UNCONNECTED[3:2],CO,NLW_i__carry__0_i_3_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({NLW_i__carry__0_i_3_O_UNCONNECTED[3:1],\baud_code_reg[1]_1 [12]}),
        .S({1'b0,1'b0,1'b1,i__carry__0_i_4_n_0}));
  CARRY4 i__carry__0_i_3__0
       (.CI(i__carry_i_5__0_n_0),
        .CO({NLW_i__carry__0_i_3__0_CO_UNCONNECTED[3:1],i__carry_i_5__0_0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i__carry__0_i_3__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_4
       (.I0(\baud_code_reg[1]_0 ),
        .I1(\baud_code_reg[0]_0 ),
        .I2(DI),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry_i_10
       (.I0(\baud_code_reg[1]_0 ),
        .I1(\baud_code_reg[0]_0 ),
        .I2(DI),
        .O(state2));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry_i_10__0
       (.I0(\baud_code_reg[1]_0 ),
        .I1(\baud_code_reg[0]_0 ),
        .I2(DI),
        .O(i__carry_i_10__0_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    i__carry_i_11
       (.I0(\baud_code_reg[0]_0 ),
        .I1(DI),
        .I2(\baud_code_reg[1]_0 ),
        .O(i__carry_i_11_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    i__carry_i_11__0
       (.I0(\baud_code_reg[0]_0 ),
        .I1(DI),
        .I2(\baud_code_reg[1]_0 ),
        .O(i__carry_i_11__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_12
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .O(i__carry_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_12__0
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .O(i__carry_i_12__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_13
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .O(clocks_per_bit[5]));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_13__0
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .O(i__carry_i_13__0_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry_i_14
       (.I0(\baud_code_reg[1]_0 ),
        .I1(\baud_code_reg[0]_0 ),
        .I2(DI),
        .O(i__carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    i__carry_i_14__0
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .I2(\baud_code_reg[1]_0 ),
        .O(i__carry_i_14__0_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    i__carry_i_15
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .I2(\baud_code_reg[1]_0 ),
        .O(clocks_per_bit[4]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_15__0
       (.I0(DI),
        .O(i__carry_i_15__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_16
       (.I0(DI),
        .O(i__carry_i_16_n_0));
  LUT3 #(
    .INIT(8'h9E)) 
    i__carry_i_16__0
       (.I0(DI),
        .I1(\baud_code_reg[1]_0 ),
        .I2(\baud_code_reg[0]_0 ),
        .O(i__carry_i_16__0_n_0));
  LUT3 #(
    .INIT(8'h9E)) 
    i__carry_i_17
       (.I0(DI),
        .I1(\baud_code_reg[1]_0 ),
        .I2(\baud_code_reg[0]_0 ),
        .O(i__carry_i_17_n_0));
  LUT3 #(
    .INIT(8'h43)) 
    i__carry_i_17__0
       (.I0(\baud_code_reg[1]_0 ),
        .I1(DI),
        .I2(\baud_code_reg[0]_0 ),
        .O(i__carry_i_17__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_18
       (.I0(\baud_code_reg[0]_0 ),
        .I1(DI),
        .O(i__carry_i_18_n_0));
  LUT3 #(
    .INIT(8'h43)) 
    i__carry_i_18__0
       (.I0(\baud_code_reg[1]_0 ),
        .I1(DI),
        .I2(\baud_code_reg[0]_0 ),
        .O(i__carry_i_18__0_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry_i_19
       (.I0(\baud_code_reg[1]_0 ),
        .I1(\baud_code_reg[0]_0 ),
        .I2(DI),
        .O(i__carry_i_19_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_19__0
       (.I0(\baud_code_reg[0]_0 ),
        .I1(DI),
        .O(i__carry_i_19__0_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry_i_20
       (.I0(\baud_code_reg[1]_0 ),
        .I1(\baud_code_reg[0]_0 ),
        .I2(DI),
        .O(i__carry_i_20_n_0));
  LUT3 #(
    .INIT(8'hAB)) 
    i__carry_i_20__0
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .I2(\baud_code_reg[1]_0 ),
        .O(i__carry_i_20__0_n_0));
  LUT3 #(
    .INIT(8'hAB)) 
    i__carry_i_21
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .I2(\baud_code_reg[1]_0 ),
        .O(i__carry_i_21_n_0));
  LUT3 #(
    .INIT(8'h71)) 
    i__carry_i_21__0
       (.I0(DI),
        .I1(\baud_code_reg[1]_0 ),
        .I2(\baud_code_reg[0]_0 ),
        .O(i__carry_i_21__0_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    i__carry_i_22
       (.I0(\baud_code_reg[1]_0 ),
        .I1(\baud_code_reg[0]_0 ),
        .I2(DI),
        .O(i__carry_i_22_n_0));
  LUT3 #(
    .INIT(8'h71)) 
    i__carry_i_22__0
       (.I0(DI),
        .I1(\baud_code_reg[1]_0 ),
        .I2(\baud_code_reg[0]_0 ),
        .O(i__carry_i_22__0_n_0));
  CARRY4 i__carry_i_5
       (.CI(i__carry_i_6_n_0),
        .CO({i__carry_i_5_n_0,i__carry_i_5_n_1,i__carry_i_5_n_2,i__carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,i__carry_i_9__0_n_0,i__carry_i_10__0_n_0}),
        .O(\baud_code_reg[1]_1 [11:8]),
        .S({i__carry_i_11__0_n_0,i__carry_i_12__0_n_0,i__carry_i_13__0_n_0,i__carry_i_14__0_n_0}));
  CARRY4 i__carry_i_5__0
       (.CI(i__carry_i_6__0_n_0),
        .CO({i__carry_i_5__0_n_0,i__carry_i_5__0_n_1,i__carry_i_5__0_n_2,i__carry_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,i__carry_i_9_n_0}),
        .O(state10_in[11:8]),
        .S({state2,i__carry_i_11_n_0,i__carry_i_12_n_0,clocks_per_bit[5]}));
  CARRY4 i__carry_i_6
       (.CI(i__carry_i_7_n_0),
        .CO({i__carry_i_6_n_0,i__carry_i_6_n_1,i__carry_i_6_n_2,i__carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b1,1'b1,1'b1}),
        .O(\baud_code_reg[1]_1 [7:4]),
        .S({i__carry_i_15__0_n_0,i__carry_i_16__0_n_0,i__carry_i_17__0_n_0,i__carry_i_18_n_0}));
  CARRY4 i__carry_i_6__0
       (.CI(i__carry_i_7__0_n_0),
        .CO({i__carry_i_6__0_n_0,i__carry_i_6__0_n_1,i__carry_i_6__0_n_2,i__carry_i_6__0_n_3}),
        .CYINIT(1'b0),
        .DI({i__carry_i_14_n_0,DI,1'b1,1'b1}),
        .O(state10_in[7:4]),
        .S({clocks_per_bit[4],i__carry_i_16_n_0,i__carry_i_17_n_0,i__carry_i_18__0_n_0}));
  CARRY4 i__carry_i_7
       (.CI(1'b0),
        .CO({i__carry_i_7_n_0,i__carry_i_7_n_1,i__carry_i_7_n_2,i__carry_i_7_n_3}),
        .CYINIT(\baud_code_reg[2]_0 [0]),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\baud_code_reg[1]_1 [3:0]),
        .S({i__carry_i_19_n_0,i__carry_i_20__0_n_0,i__carry_i_21__0_n_0,i__carry_i_22_n_0}));
  CARRY4 i__carry_i_7__0
       (.CI(1'b0),
        .CO({i__carry_i_7__0_n_0,i__carry_i_7__0_n_1,i__carry_i_7__0_n_2,i__carry_i_7__0_n_3}),
        .CYINIT(\baud_code_reg[2]_0 [1]),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(state10_in[3:0]),
        .S({i__carry_i_19__0_n_0,i__carry_i_20_n_0,i__carry_i_21_n_0,i__carry_i_22__0_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_8
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .I2(\baud_code_reg[1]_0 ),
        .O(\baud_code_reg[2]_0 [0]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry_i_8__0
       (.I0(DI),
        .I1(\baud_code_reg[0]_0 ),
        .I2(\baud_code_reg[1]_0 ),
        .O(\baud_code_reg[2]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_9
       (.I0(\baud_code_reg[0]_0 ),
        .I1(DI),
        .O(i__carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_9__0
       (.I0(\baud_code_reg[0]_0 ),
        .I1(DI),
        .O(i__carry_i_9__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_0_63_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_0_63_0_2_n_0),
        .DOB(memory_reg_0_63_0_2_n_1),
        .DOC(memory_reg_0_63_0_2_n_2),
        .DOD(NLW_memory_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_0_63_0_2_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    memory_reg_0_63_0_2_i_4
       (.I0(memory_reg_0_63_0_2_i_5_n_0),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[9]),
        .I4(write_pointer_reg[8]),
        .O(memory_reg_0_63_0_2_i_4_n_0));
  LUT6 #(
    .INIT(64'h5454005400540054)) 
    memory_reg_0_63_0_2_i_5
       (.I0(rst_0),
        .I1(valid),
        .I2(framing_error),
        .I3(memory_reg_0_63_0_2_i_6_n_0),
        .I4(\occupancy[10]_i_8_n_0 ),
        .I5(overflow_i_2_n_0),
        .O(memory_reg_0_63_0_2_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFD7)) 
    memory_reg_0_63_0_2_i_6
       (.I0(command[1]),
        .I1(ack_toggle_reg_0),
        .I2(command[0]),
        .I3(command[2]),
        .O(memory_reg_0_63_0_2_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_0_63_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_0_63_3_5_n_0),
        .DOB(memory_reg_0_63_3_5_n_1),
        .DOC(memory_reg_0_63_3_5_n_2),
        .DOD(NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_0_63_0_2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_0_63_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_0_63_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_0_63_6_8_n_0),
        .DOB(memory_reg_0_63_6_8_n_1),
        .DOC(memory_reg_0_63_6_8_n_2),
        .DOD(NLW_memory_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_0_63_0_2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_128_191_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_128_191_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_128_191_0_2_n_0),
        .DOB(memory_reg_128_191_0_2_n_1),
        .DOC(memory_reg_128_191_0_2_n_2),
        .DOD(NLW_memory_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_128_191_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_128_191_0_2_i_1
       (.I0(memory_reg_0_63_0_2_i_5_n_0),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[9]),
        .I4(write_pointer_reg[7]),
        .O(memory_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_128_191_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_128_191_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_128_191_3_5_n_0),
        .DOB(memory_reg_128_191_3_5_n_1),
        .DOC(memory_reg_128_191_3_5_n_2),
        .DOD(NLW_memory_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_128_191_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_128_191_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_128_191_6_8_n_0),
        .DOB(memory_reg_128_191_6_8_n_1),
        .DOC(memory_reg_128_191_6_8_n_2),
        .DOD(NLW_memory_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_192_255_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_192_255_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_192_255_0_2_n_0),
        .DOB(memory_reg_192_255_0_2_n_1),
        .DOC(memory_reg_192_255_0_2_n_2),
        .DOD(NLW_memory_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_192_255_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    memory_reg_192_255_0_2_i_1
       (.I0(write_pointer_reg[9]),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[8]),
        .I4(memory_reg_0_63_0_2_i_5_n_0),
        .O(memory_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_192_255_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_192_255_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_192_255_3_5_n_0),
        .DOB(memory_reg_192_255_3_5_n_1),
        .DOC(memory_reg_192_255_3_5_n_2),
        .DOD(NLW_memory_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_192_255_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_192_255_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_192_255_6_8_n_0),
        .DOB(memory_reg_192_255_6_8_n_1),
        .DOC(memory_reg_192_255_6_8_n_2),
        .DOD(NLW_memory_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_256_319_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_256_319_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_256_319_0_2_n_0),
        .DOB(memory_reg_256_319_0_2_n_1),
        .DOC(memory_reg_256_319_0_2_n_2),
        .DOD(NLW_memory_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_256_319_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_256_319_0_2_i_1
       (.I0(memory_reg_0_63_0_2_i_5_n_0),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[9]),
        .I4(write_pointer_reg[8]),
        .O(memory_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_256_319_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_256_319_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_256_319_3_5_n_0),
        .DOB(memory_reg_256_319_3_5_n_1),
        .DOC(memory_reg_256_319_3_5_n_2),
        .DOD(NLW_memory_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_256_319_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_256_319_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_256_319_6_8_n_0),
        .DOB(memory_reg_256_319_6_8_n_1),
        .DOC(memory_reg_256_319_6_8_n_2),
        .DOD(NLW_memory_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_320_383_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_320_383_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_320_383_0_2_n_0),
        .DOB(memory_reg_320_383_0_2_n_1),
        .DOC(memory_reg_320_383_0_2_n_2),
        .DOD(NLW_memory_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_320_383_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    memory_reg_320_383_0_2_i_1
       (.I0(write_pointer_reg[9]),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[7]),
        .I4(memory_reg_0_63_0_2_i_5_n_0),
        .O(memory_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_320_383_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_320_383_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_320_383_3_5_n_0),
        .DOB(memory_reg_320_383_3_5_n_1),
        .DOC(memory_reg_320_383_3_5_n_2),
        .DOD(NLW_memory_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_320_383_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_320_383_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_320_383_6_8_n_0),
        .DOB(memory_reg_320_383_6_8_n_1),
        .DOC(memory_reg_320_383_6_8_n_2),
        .DOD(NLW_memory_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_384_447_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_384_447_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_384_447_0_2_n_0),
        .DOB(memory_reg_384_447_0_2_n_1),
        .DOC(memory_reg_384_447_0_2_n_2),
        .DOD(NLW_memory_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_384_447_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    memory_reg_384_447_0_2_i_1
       (.I0(write_pointer_reg[9]),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[6]),
        .I4(memory_reg_0_63_0_2_i_5_n_0),
        .O(memory_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_384_447_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_384_447_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_384_447_3_5_n_0),
        .DOB(memory_reg_384_447_3_5_n_1),
        .DOC(memory_reg_384_447_3_5_n_2),
        .DOD(NLW_memory_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_384_447_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_384_447_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_384_447_6_8_n_0),
        .DOB(memory_reg_384_447_6_8_n_1),
        .DOC(memory_reg_384_447_6_8_n_2),
        .DOD(NLW_memory_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_448_511_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_448_511_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_448_511_0_2_n_0),
        .DOB(memory_reg_448_511_0_2_n_1),
        .DOC(memory_reg_448_511_0_2_n_2),
        .DOD(NLW_memory_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_448_511_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_448_511_0_2_i_1
       (.I0(write_pointer_reg[9]),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(memory_reg_0_63_0_2_i_5_n_0),
        .I4(write_pointer_reg[8]),
        .O(memory_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_448_511_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_448_511_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_448_511_3_5_n_0),
        .DOB(memory_reg_448_511_3_5_n_1),
        .DOC(memory_reg_448_511_3_5_n_2),
        .DOD(NLW_memory_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_448_511_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_448_511_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_448_511_6_8_n_0),
        .DOB(memory_reg_448_511_6_8_n_1),
        .DOC(memory_reg_448_511_6_8_n_2),
        .DOD(NLW_memory_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_512_575_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_512_575_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_512_575_0_2_n_0),
        .DOB(memory_reg_512_575_0_2_n_1),
        .DOC(memory_reg_512_575_0_2_n_2),
        .DOD(NLW_memory_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_512_575_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_512_575_0_2_i_1
       (.I0(memory_reg_0_63_0_2_i_5_n_0),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[8]),
        .I4(write_pointer_reg[9]),
        .O(memory_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_512_575_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_512_575_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_512_575_3_5_n_0),
        .DOB(memory_reg_512_575_3_5_n_1),
        .DOC(memory_reg_512_575_3_5_n_2),
        .DOD(NLW_memory_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_512_575_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_512_575_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_512_575_6_8_n_0),
        .DOB(memory_reg_512_575_6_8_n_1),
        .DOC(memory_reg_512_575_6_8_n_2),
        .DOD(NLW_memory_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_576_639_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_576_639_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_576_639_0_2_n_0),
        .DOB(memory_reg_576_639_0_2_n_1),
        .DOC(memory_reg_576_639_0_2_n_2),
        .DOD(NLW_memory_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_576_639_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    memory_reg_576_639_0_2_i_1
       (.I0(write_pointer_reg[8]),
        .I1(write_pointer_reg[9]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[7]),
        .I4(memory_reg_0_63_0_2_i_5_n_0),
        .O(memory_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_576_639_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_576_639_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_576_639_3_5_n_0),
        .DOB(memory_reg_576_639_3_5_n_1),
        .DOC(memory_reg_576_639_3_5_n_2),
        .DOD(NLW_memory_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_576_639_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_576_639_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_576_639_6_8_n_0),
        .DOB(memory_reg_576_639_6_8_n_1),
        .DOC(memory_reg_576_639_6_8_n_2),
        .DOD(NLW_memory_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_640_703_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_640_703_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_640_703_0_2_n_0),
        .DOB(memory_reg_640_703_0_2_n_1),
        .DOC(memory_reg_640_703_0_2_n_2),
        .DOD(NLW_memory_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_640_703_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    memory_reg_640_703_0_2_i_1
       (.I0(write_pointer_reg[8]),
        .I1(write_pointer_reg[9]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[6]),
        .I4(memory_reg_0_63_0_2_i_5_n_0),
        .O(memory_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_640_703_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_640_703_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_640_703_3_5_n_0),
        .DOB(memory_reg_640_703_3_5_n_1),
        .DOC(memory_reg_640_703_3_5_n_2),
        .DOD(NLW_memory_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_640_703_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_640_703_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_640_703_6_8_n_0),
        .DOB(memory_reg_640_703_6_8_n_1),
        .DOC(memory_reg_640_703_6_8_n_2),
        .DOD(NLW_memory_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_64_127_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_64_127_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_64_127_0_2_n_0),
        .DOB(memory_reg_64_127_0_2_n_1),
        .DOC(memory_reg_64_127_0_2_n_2),
        .DOD(NLW_memory_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_64_127_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_64_127_0_2_i_1
       (.I0(memory_reg_0_63_0_2_i_5_n_0),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[9]),
        .I4(write_pointer_reg[6]),
        .O(memory_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_64_127_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_64_127_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_64_127_3_5_n_0),
        .DOB(memory_reg_64_127_3_5_n_1),
        .DOC(memory_reg_64_127_3_5_n_2),
        .DOD(NLW_memory_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_64_127_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_64_127_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_64_127_6_8_n_0),
        .DOB(memory_reg_64_127_6_8_n_1),
        .DOC(memory_reg_64_127_6_8_n_2),
        .DOD(NLW_memory_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_704_767_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_704_767_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_704_767_0_2_n_0),
        .DOB(memory_reg_704_767_0_2_n_1),
        .DOC(memory_reg_704_767_0_2_n_2),
        .DOD(NLW_memory_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_704_767_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_704_767_0_2_i_1
       (.I0(write_pointer_reg[8]),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(memory_reg_0_63_0_2_i_5_n_0),
        .I4(write_pointer_reg[9]),
        .O(memory_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_704_767_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_704_767_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_704_767_3_5_n_0),
        .DOB(memory_reg_704_767_3_5_n_1),
        .DOC(memory_reg_704_767_3_5_n_2),
        .DOD(NLW_memory_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_704_767_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_704_767_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_704_767_6_8_n_0),
        .DOB(memory_reg_704_767_6_8_n_1),
        .DOC(memory_reg_704_767_6_8_n_2),
        .DOD(NLW_memory_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_768_831_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_768_831_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_768_831_0_2_n_0),
        .DOB(memory_reg_768_831_0_2_n_1),
        .DOC(memory_reg_768_831_0_2_n_2),
        .DOD(NLW_memory_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_768_831_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    memory_reg_768_831_0_2_i_1
       (.I0(write_pointer_reg[7]),
        .I1(write_pointer_reg[9]),
        .I2(write_pointer_reg[8]),
        .I3(write_pointer_reg[6]),
        .I4(memory_reg_0_63_0_2_i_5_n_0),
        .O(memory_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_768_831_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_768_831_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_768_831_3_5_n_0),
        .DOB(memory_reg_768_831_3_5_n_1),
        .DOC(memory_reg_768_831_3_5_n_2),
        .DOD(NLW_memory_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_768_831_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_768_831_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_768_831_6_8_n_0),
        .DOB(memory_reg_768_831_6_8_n_1),
        .DOC(memory_reg_768_831_6_8_n_2),
        .DOD(NLW_memory_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_832_895_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_832_895_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_832_895_0_2_n_0),
        .DOB(memory_reg_832_895_0_2_n_1),
        .DOC(memory_reg_832_895_0_2_n_2),
        .DOD(NLW_memory_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_832_895_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_832_895_0_2_i_1
       (.I0(write_pointer_reg[7]),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[6]),
        .I3(memory_reg_0_63_0_2_i_5_n_0),
        .I4(write_pointer_reg[9]),
        .O(memory_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_832_895_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_832_895_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_832_895_3_5_n_0),
        .DOB(memory_reg_832_895_3_5_n_1),
        .DOC(memory_reg_832_895_3_5_n_2),
        .DOD(NLW_memory_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_832_895_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_832_895_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_832_895_6_8_n_0),
        .DOB(memory_reg_832_895_6_8_n_1),
        .DOC(memory_reg_832_895_6_8_n_2),
        .DOD(NLW_memory_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_896_959_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_896_959_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_896_959_0_2_n_0),
        .DOB(memory_reg_896_959_0_2_n_1),
        .DOC(memory_reg_896_959_0_2_n_2),
        .DOD(NLW_memory_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_896_959_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_896_959_0_2_i_1
       (.I0(write_pointer_reg[6]),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[7]),
        .I3(memory_reg_0_63_0_2_i_5_n_0),
        .I4(write_pointer_reg[9]),
        .O(memory_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_896_959_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_896_959_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_896_959_3_5_n_0),
        .DOB(memory_reg_896_959_3_5_n_1),
        .DOC(memory_reg_896_959_3_5_n_2),
        .DOD(NLW_memory_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_896_959_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_896_959_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_896_959_6_8_n_0),
        .DOB(memory_reg_896_959_6_8_n_1),
        .DOC(memory_reg_896_959_6_8_n_2),
        .DOD(NLW_memory_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_960_1023_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M memory_reg_960_1023_0_2
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(1'b0),
        .DOA(memory_reg_960_1023_0_2_n_0),
        .DOB(memory_reg_960_1023_0_2_n_1),
        .DOC(memory_reg_960_1023_0_2_n_2),
        .DOD(NLW_memory_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_960_1023_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    memory_reg_960_1023_0_2_i_1
       (.I0(memory_reg_0_63_0_2_i_5_n_0),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[9]),
        .I4(write_pointer_reg[8]),
        .O(memory_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_960_1023_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M memory_reg_960_1023_3_5
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(1'b0),
        .DOA(memory_reg_960_1023_3_5_n_0),
        .DOB(memory_reg_960_1023_3_5_n_1),
        .DOC(memory_reg_960_1023_3_5_n_2),
        .DOD(NLW_memory_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/event_fifo/memory_reg_960_1023_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M memory_reg_960_1023_6_8
       (.ADDRA(read_pointer_reg[5:0]),
        .ADDRB(read_pointer_reg[5:0]),
        .ADDRC(read_pointer_reg[5:0]),
        .ADDRD(write_pointer_reg[5:0]),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(framing_error),
        .DID(1'b0),
        .DOA(memory_reg_960_1023_6_8_n_0),
        .DOB(memory_reg_960_1023_6_8_n_1),
        .DOC(memory_reg_960_1023_6_8_n_2),
        .DOD(NLW_memory_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_960_1023_0_2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \occupancy[0]_i_1 
       (.I0(Q[0]),
        .O(occupancy[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F000000)) 
    \occupancy[10]_i_1 
       (.I0(command[5]),
        .I1(command[4]),
        .I2(command[1]),
        .I3(new_command),
        .I4(command[2]),
        .I5(rst_0),
        .O(occupancy_0));
  LUT4 #(
    .INIT(16'h56AA)) 
    \occupancy[10]_i_2 
       (.I0(pop_accepted),
        .I1(valid),
        .I2(framing_error),
        .I3(command_2_sn_1),
        .O(\occupancy[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \occupancy[10]_i_4 
       (.I0(ack_toggle_reg_0),
        .I1(command[0]),
        .O(new_command));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hABBAAAAA)) 
    \occupancy[10]_i_5 
       (.I0(\occupancy[10]_i_8_n_0 ),
        .I1(command[2]),
        .I2(command[0]),
        .I3(ack_toggle_reg_0),
        .I4(command[1]),
        .O(command_2_sn_1));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[10]_i_6 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\occupancy[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[10]_i_7 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\occupancy[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \occupancy[10]_i_8 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\status[9]_INST_0_i_1_n_0 ),
        .I5(Q[10]),
        .O(\occupancy[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\occupancy[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\occupancy[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[4]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\occupancy[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA955)) 
    \occupancy[4]_i_6 
       (.I0(Q[1]),
        .I1(valid),
        .I2(framing_error),
        .I3(command_2_sn_1),
        .O(\occupancy[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_2 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\occupancy[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_3 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\occupancy[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_4 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\occupancy[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_5 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\occupancy[8]_i_5_n_0 ));
  FDRE \occupancy_reg[0] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[0]),
        .Q(Q[0]),
        .R(occupancy_0));
  FDRE \occupancy_reg[10] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[10]),
        .Q(Q[10]),
        .R(occupancy_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \occupancy_reg[10]_i_3 
       (.CI(\occupancy_reg[8]_i_1_n_0 ),
        .CO({\NLW_occupancy_reg[10]_i_3_CO_UNCONNECTED [3:1],\occupancy_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_occupancy_reg[10]_i_3_O_UNCONNECTED [3:2],occupancy[10:9]}),
        .S({1'b0,1'b0,\occupancy[10]_i_6_n_0 ,\occupancy[10]_i_7_n_0 }));
  FDRE \occupancy_reg[1] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[1]),
        .Q(Q[1]),
        .R(occupancy_0));
  FDRE \occupancy_reg[2] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[2]),
        .Q(Q[2]),
        .R(occupancy_0));
  FDRE \occupancy_reg[3] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[3]),
        .Q(Q[3]),
        .R(occupancy_0));
  FDRE \occupancy_reg[4] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[4]),
        .Q(Q[4]),
        .R(occupancy_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \occupancy_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\occupancy_reg[4]_i_1_n_0 ,\occupancy_reg[4]_i_1_n_1 ,\occupancy_reg[4]_i_1_n_2 ,\occupancy_reg[4]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\occupancy_reg[4]_0 }),
        .O(occupancy[4:1]),
        .S({\occupancy[4]_i_3_n_0 ,\occupancy[4]_i_4_n_0 ,\occupancy[4]_i_5_n_0 ,\occupancy[4]_i_6_n_0 }));
  FDRE \occupancy_reg[5] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[5]),
        .Q(Q[5]),
        .R(occupancy_0));
  FDRE \occupancy_reg[6] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[6]),
        .Q(Q[6]),
        .R(occupancy_0));
  FDRE \occupancy_reg[7] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[7]),
        .Q(Q[7]),
        .R(occupancy_0));
  FDRE \occupancy_reg[8] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[8]),
        .Q(Q[8]),
        .R(occupancy_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \occupancy_reg[8]_i_1 
       (.CI(\occupancy_reg[4]_i_1_n_0 ),
        .CO({\occupancy_reg[8]_i_1_n_0 ,\occupancy_reg[8]_i_1_n_1 ,\occupancy_reg[8]_i_1_n_2 ,\occupancy_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(occupancy[8:5]),
        .S({\occupancy[8]_i_2_n_0 ,\occupancy[8]_i_3_n_0 ,\occupancy[8]_i_4_n_0 ,\occupancy[8]_i_5_n_0 }));
  FDRE \occupancy_reg[9] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[9]),
        .Q(Q[9]),
        .R(occupancy_0));
  LUT6 #(
    .INIT(64'h5555111000000000)) 
    overflow_i_1
       (.I0(rst_0),
        .I1(command_2_sn_1),
        .I2(valid),
        .I3(framing_error),
        .I4(\occupancy_reg[3]_0 [10]),
        .I5(overflow_i_2_n_0),
        .O(overflow_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFD555D555FFFF)) 
    overflow_i_2
       (.I0(command[2]),
        .I1(command[1]),
        .I2(command[4]),
        .I3(command[5]),
        .I4(command[0]),
        .I5(ack_toggle_reg_0),
        .O(overflow_i_2_n_0));
  FDRE overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(overflow_i_1_n_0),
        .Q(\occupancy_reg[3]_0 [10]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[2]_i_1 
       (.I0(read_pointer_reg[1]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[3]_i_1 
       (.I0(read_pointer_reg[2]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[1]),
        .I3(read_pointer_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_pointer[4]_i_1 
       (.I0(read_pointer_reg[3]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[2]),
        .I4(read_pointer_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_pointer[5]_i_1 
       (.I0(read_pointer_reg[4]),
        .I1(read_pointer_reg[2]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[1]),
        .I4(read_pointer_reg[3]),
        .I5(read_pointer_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[6]_i_1 
       (.I0(\read_pointer[9]_i_3_n_0 ),
        .I1(read_pointer_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[7]_i_1 
       (.I0(read_pointer_reg[6]),
        .I1(\read_pointer[9]_i_3_n_0 ),
        .I2(read_pointer_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[8]_i_1 
       (.I0(\read_pointer[9]_i_3_n_0 ),
        .I1(read_pointer_reg[6]),
        .I2(read_pointer_reg[7]),
        .I3(read_pointer_reg[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h02200000)) 
    \read_pointer[9]_i_1 
       (.I0(\occupancy_reg[3]_0 [9]),
        .I1(command[2]),
        .I2(command[0]),
        .I3(ack_toggle_reg_0),
        .I4(command[1]),
        .O(pop_accepted));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_pointer[9]_i_2 
       (.I0(\read_pointer[9]_i_3_n_0 ),
        .I1(read_pointer_reg[8]),
        .I2(read_pointer_reg[7]),
        .I3(read_pointer_reg[6]),
        .I4(read_pointer_reg[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \read_pointer[9]_i_3 
       (.I0(read_pointer_reg[4]),
        .I1(read_pointer_reg[2]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[1]),
        .I4(read_pointer_reg[3]),
        .I5(read_pointer_reg[5]),
        .O(\read_pointer[9]_i_3_n_0 ));
  FDRE \read_pointer_reg[0] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[0]),
        .Q(read_pointer_reg[0]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[1] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[1]),
        .Q(read_pointer_reg[1]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[2] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[2]),
        .Q(read_pointer_reg[2]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[3] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[3]),
        .Q(read_pointer_reg[3]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[4] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[4]),
        .Q(read_pointer_reg[4]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[5] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[5]),
        .Q(read_pointer_reg[5]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[6] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[6]),
        .Q(read_pointer_reg[6]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[7] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[7]),
        .Q(read_pointer_reg[7]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[8] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[8]),
        .Q(read_pointer_reg[8]),
        .R(occupancy_0));
  FDRE \read_pointer_reg[9] 
       (.C(clk),
        .CE(pop_accepted),
        .D(p_0_in[9]),
        .Q(read_pointer_reg[9]),
        .R(occupancy_0));
  LUT6 #(
    .INIT(64'h00002A002A000000)) 
    rx_flush_i_1
       (.I0(command[2]),
        .I1(command[4]),
        .I2(command[5]),
        .I3(command[1]),
        .I4(ack_toggle_reg_0),
        .I5(command[0]),
        .O(baud_requested));
  FDSE rx_flush_reg
       (.C(clk),
        .CE(1'b1),
        .D(baud_requested),
        .Q(rx_flush),
        .S(rst));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[0]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[0]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[0]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[0]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [0]));
  MUXF7 \status[0]_INST_0_i_1 
       (.I0(\status[0]_INST_0_i_4_n_0 ),
        .I1(\status[0]_INST_0_i_5_n_0 ),
        .O(\status[0]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_2 
       (.I0(memory_reg_704_767_0_2_n_0),
        .I1(memory_reg_640_703_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_0_2_n_0),
        .O(\status[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_3 
       (.I0(memory_reg_960_1023_0_2_n_0),
        .I1(memory_reg_896_959_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_0_2_n_0),
        .O(\status[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_4 
       (.I0(memory_reg_192_255_0_2_n_0),
        .I1(memory_reg_128_191_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_0_2_n_0),
        .O(\status[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_5 
       (.I0(memory_reg_448_511_0_2_n_0),
        .I1(memory_reg_384_447_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_0_2_n_0),
        .O(\status[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \status[12]_INST_0 
       (.I0(\occupancy_reg[3]_0 [9]),
        .I1(head0),
        .O(\occupancy_reg[3]_0 [11]));
  MUXF8 \status[12]_INST_0_i_1 
       (.I0(\status[12]_INST_0_i_2_n_0 ),
        .I1(\status[12]_INST_0_i_3_n_0 ),
        .O(head0),
        .S(read_pointer_reg[9]));
  MUXF7 \status[12]_INST_0_i_2 
       (.I0(\status[12]_INST_0_i_4_n_0 ),
        .I1(\status[12]_INST_0_i_5_n_0 ),
        .O(\status[12]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[12]_INST_0_i_3 
       (.I0(\status[12]_INST_0_i_6_n_0 ),
        .I1(\status[12]_INST_0_i_7_n_0 ),
        .O(\status[12]_INST_0_i_3_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[12]_INST_0_i_4 
       (.I0(memory_reg_192_255_6_8_n_2),
        .I1(memory_reg_128_191_6_8_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_6_8_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_6_8_n_2),
        .O(\status[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[12]_INST_0_i_5 
       (.I0(memory_reg_448_511_6_8_n_2),
        .I1(memory_reg_384_447_6_8_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_6_8_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_6_8_n_2),
        .O(\status[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[12]_INST_0_i_6 
       (.I0(memory_reg_704_767_6_8_n_2),
        .I1(memory_reg_640_703_6_8_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_6_8_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_6_8_n_2),
        .O(\status[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[12]_INST_0_i_7 
       (.I0(memory_reg_960_1023_6_8_n_2),
        .I1(memory_reg_896_959_6_8_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_6_8_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_6_8_n_2),
        .O(\status[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[1]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[1]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[1]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[1]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [1]));
  MUXF7 \status[1]_INST_0_i_1 
       (.I0(\status[1]_INST_0_i_4_n_0 ),
        .I1(\status[1]_INST_0_i_5_n_0 ),
        .O(\status[1]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_2 
       (.I0(memory_reg_704_767_0_2_n_1),
        .I1(memory_reg_640_703_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_0_2_n_1),
        .O(\status[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_3 
       (.I0(memory_reg_960_1023_0_2_n_1),
        .I1(memory_reg_896_959_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_0_2_n_1),
        .O(\status[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_4 
       (.I0(memory_reg_192_255_0_2_n_1),
        .I1(memory_reg_128_191_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_0_2_n_1),
        .O(\status[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_5 
       (.I0(memory_reg_448_511_0_2_n_1),
        .I1(memory_reg_384_447_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_0_2_n_1),
        .O(\status[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[2]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[2]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[2]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[2]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [2]));
  MUXF7 \status[2]_INST_0_i_1 
       (.I0(\status[2]_INST_0_i_4_n_0 ),
        .I1(\status[2]_INST_0_i_5_n_0 ),
        .O(\status[2]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_2 
       (.I0(memory_reg_704_767_0_2_n_2),
        .I1(memory_reg_640_703_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_0_2_n_2),
        .O(\status[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_3 
       (.I0(memory_reg_960_1023_0_2_n_2),
        .I1(memory_reg_896_959_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_0_2_n_2),
        .O(\status[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_4 
       (.I0(memory_reg_192_255_0_2_n_2),
        .I1(memory_reg_128_191_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_0_2_n_2),
        .O(\status[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_5 
       (.I0(memory_reg_448_511_0_2_n_2),
        .I1(memory_reg_384_447_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_0_2_n_2),
        .O(\status[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[3]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[3]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[3]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[3]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [3]));
  MUXF7 \status[3]_INST_0_i_1 
       (.I0(\status[3]_INST_0_i_4_n_0 ),
        .I1(\status[3]_INST_0_i_5_n_0 ),
        .O(\status[3]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_2 
       (.I0(memory_reg_704_767_3_5_n_0),
        .I1(memory_reg_640_703_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_3_5_n_0),
        .O(\status[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_3 
       (.I0(memory_reg_960_1023_3_5_n_0),
        .I1(memory_reg_896_959_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_3_5_n_0),
        .O(\status[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_4 
       (.I0(memory_reg_192_255_3_5_n_0),
        .I1(memory_reg_128_191_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_3_5_n_0),
        .O(\status[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_5 
       (.I0(memory_reg_448_511_3_5_n_0),
        .I1(memory_reg_384_447_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_3_5_n_0),
        .O(\status[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[4]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[4]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[4]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[4]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [4]));
  MUXF7 \status[4]_INST_0_i_1 
       (.I0(\status[4]_INST_0_i_4_n_0 ),
        .I1(\status[4]_INST_0_i_5_n_0 ),
        .O(\status[4]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_2 
       (.I0(memory_reg_704_767_3_5_n_1),
        .I1(memory_reg_640_703_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_3_5_n_1),
        .O(\status[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_3 
       (.I0(memory_reg_960_1023_3_5_n_1),
        .I1(memory_reg_896_959_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_3_5_n_1),
        .O(\status[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_4 
       (.I0(memory_reg_192_255_3_5_n_1),
        .I1(memory_reg_128_191_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_3_5_n_1),
        .O(\status[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_5 
       (.I0(memory_reg_448_511_3_5_n_1),
        .I1(memory_reg_384_447_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_3_5_n_1),
        .O(\status[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[5]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[5]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[5]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[5]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [5]));
  MUXF7 \status[5]_INST_0_i_1 
       (.I0(\status[5]_INST_0_i_4_n_0 ),
        .I1(\status[5]_INST_0_i_5_n_0 ),
        .O(\status[5]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_2 
       (.I0(memory_reg_704_767_3_5_n_2),
        .I1(memory_reg_640_703_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_3_5_n_2),
        .O(\status[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_3 
       (.I0(memory_reg_960_1023_3_5_n_2),
        .I1(memory_reg_896_959_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_3_5_n_2),
        .O(\status[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_4 
       (.I0(memory_reg_192_255_3_5_n_2),
        .I1(memory_reg_128_191_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_3_5_n_2),
        .O(\status[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_5 
       (.I0(memory_reg_448_511_3_5_n_2),
        .I1(memory_reg_384_447_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_3_5_n_2),
        .O(\status[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[6]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[6]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[6]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[6]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [6]));
  MUXF7 \status[6]_INST_0_i_1 
       (.I0(\status[6]_INST_0_i_4_n_0 ),
        .I1(\status[6]_INST_0_i_5_n_0 ),
        .O(\status[6]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_2 
       (.I0(memory_reg_704_767_6_8_n_0),
        .I1(memory_reg_640_703_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_6_8_n_0),
        .O(\status[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_3 
       (.I0(memory_reg_960_1023_6_8_n_0),
        .I1(memory_reg_896_959_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_6_8_n_0),
        .O(\status[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_4 
       (.I0(memory_reg_192_255_6_8_n_0),
        .I1(memory_reg_128_191_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_6_8_n_0),
        .O(\status[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_5 
       (.I0(memory_reg_448_511_6_8_n_0),
        .I1(memory_reg_384_447_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_6_8_n_0),
        .O(\status[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \status[7]_INST_0 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(\status[7]_INST_0_i_1_n_0 ),
        .I2(read_pointer_reg[9]),
        .I3(\status[7]_INST_0_i_2_n_0 ),
        .I4(read_pointer_reg[8]),
        .I5(\status[7]_INST_0_i_3_n_0 ),
        .O(\occupancy_reg[3]_0 [7]));
  MUXF7 \status[7]_INST_0_i_1 
       (.I0(\status[7]_INST_0_i_4_n_0 ),
        .I1(\status[7]_INST_0_i_5_n_0 ),
        .O(\status[7]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_2 
       (.I0(memory_reg_704_767_6_8_n_1),
        .I1(memory_reg_640_703_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_6_8_n_1),
        .O(\status[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_3 
       (.I0(memory_reg_960_1023_6_8_n_1),
        .I1(memory_reg_896_959_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_6_8_n_1),
        .O(\status[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_4 
       (.I0(memory_reg_192_255_6_8_n_1),
        .I1(memory_reg_128_191_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_6_8_n_1),
        .O(\status[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_5 
       (.I0(memory_reg_448_511_6_8_n_1),
        .I1(memory_reg_384_447_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_6_8_n_1),
        .O(\status[7]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status[8]_INST_0 
       (.I0(\occupancy_reg[3]_0 [9]),
        .I1(head0),
        .O(\occupancy_reg[3]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \status[9]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\status[9]_INST_0_i_1_n_0 ),
        .I5(Q[10]),
        .O(\occupancy_reg[3]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \status[9]_INST_0_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\status[9]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer_reg[1]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_1 
       (.I0(write_pointer_reg[2]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[1]),
        .I3(write_pointer_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[4]_i_1 
       (.I0(write_pointer_reg[3]),
        .I1(write_pointer_reg[1]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[2]),
        .I4(write_pointer_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_pointer[5]_i_1 
       (.I0(write_pointer_reg[4]),
        .I1(write_pointer_reg[2]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[1]),
        .I4(write_pointer_reg[3]),
        .I5(write_pointer_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[6]_i_1 
       (.I0(\write_pointer[9]_i_3_n_0 ),
        .I1(write_pointer_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[7]_i_1 
       (.I0(write_pointer_reg[6]),
        .I1(\write_pointer[9]_i_3_n_0 ),
        .I2(write_pointer_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[8]_i_1 
       (.I0(\write_pointer[9]_i_3_n_0 ),
        .I1(write_pointer_reg[6]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[9]_i_2 
       (.I0(\write_pointer[9]_i_3_n_0 ),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[6]),
        .I4(write_pointer_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_pointer[9]_i_3 
       (.I0(write_pointer_reg[4]),
        .I1(write_pointer_reg[2]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[1]),
        .I4(write_pointer_reg[3]),
        .I5(write_pointer_reg[5]),
        .O(\write_pointer[9]_i_3_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(write_pointer_reg[0]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(write_pointer_reg[1]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(write_pointer_reg[2]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(write_pointer_reg[3]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(write_pointer_reg[4]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[5]),
        .Q(write_pointer_reg[5]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[6]),
        .Q(write_pointer_reg[6]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[7] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[7]),
        .Q(write_pointer_reg[7]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[8] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[8]),
        .Q(write_pointer_reg[8]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[9] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[9]),
        .Q(write_pointer_reg[9]),
        .R(occupancy_0));
endmodule

(* ORIG_REF_NAME = "uart_diag_baud_core" *) 
module uart_system_uart_diag_baud_core_0_0_uart_diag_baud_core
   (status,
    \baud_code_reg[2] ,
    \baud_code_reg[0] ,
    \baud_code_reg[1] ,
    \occupancy_reg[3] ,
    clk,
    rst,
    rx,
    command);
  output [10:0]status;
  output \baud_code_reg[2] ;
  output \baud_code_reg[0] ;
  output \baud_code_reg[1] ;
  output [12:0]\occupancy_reg[3] ;
  input clk;
  input rst;
  input rx;
  input [5:0]command;

  wire \baud_code_reg[0] ;
  wire \baud_code_reg[1] ;
  wire \baud_code_reg[2] ;
  wire clk;
  wire [1:0]clocks_per_bit;
  wire [5:0]command;
  wire event_fifo_n_24;
  wire event_fifo_n_28;
  wire event_fifo_n_44;
  wire event_fifo_n_57;
  wire event_fifo_n_58;
  wire event_fifo_n_59;
  wire framing_error;
  wire [12:0]\occupancy_reg[3] ;
  wire push_accepted;
  wire rst;
  wire rx;
  wire [12:1]state10_in;
  wire [13:1]state2;
  wire [10:0]status;
  wire uart_receiver_n_10;
  wire uart_receiver_n_12;
  wire uart_receiver_n_2;
  wire uart_receiver_n_3;
  wire uart_receiver_n_4;
  wire uart_receiver_n_5;
  wire uart_receiver_n_6;
  wire uart_receiver_n_7;
  wire uart_receiver_n_8;
  wire uart_receiver_n_9;
  wire valid;

  uart_system_uart_diag_baud_core_0_0_uart_baud_event_fifo event_fifo
       (.CO(event_fifo_n_44),
        .DI(\baud_code_reg[2] ),
        .E(push_accepted),
        .Q(status),
        .S(event_fifo_n_58),
        .ack_toggle_reg_0(\occupancy_reg[3] [11]),
        .\baud_code_reg[0]_0 (\baud_code_reg[0] ),
        .\baud_code_reg[1]_0 (\baud_code_reg[1] ),
        .\baud_code_reg[1]_1 (state2),
        .\baud_code_reg[2]_0 (clocks_per_bit),
        .clk(clk),
        .command(command),
        .command_2_sp_1(event_fifo_n_24),
        .\count_reg[15] (event_fifo_n_59),
        .framing_error(framing_error),
        .i__carry_i_5__0_0(event_fifo_n_57),
        .\occupancy_reg[3]_0 ({\occupancy_reg[3] [12],\occupancy_reg[3] [10:0]}),
        .\occupancy_reg[4]_0 (uart_receiver_n_12),
        .p_1_in({uart_receiver_n_3,uart_receiver_n_4,uart_receiver_n_5,uart_receiver_n_6,uart_receiver_n_7,uart_receiver_n_8,uart_receiver_n_9,uart_receiver_n_10}),
        .rst(rst),
        .rst_0(event_fifo_n_28),
        .state10_in(state10_in),
        .\state1_inferred__0/i__carry__0 (uart_receiver_n_2),
        .valid(valid));
  uart_system_uart_diag_baud_core_0_0_uart_rx_baud uart_receiver
       (.CO(event_fifo_n_44),
        .E(push_accepted),
        .Q(uart_receiver_n_2),
        .S(event_fifo_n_58),
        .SR(event_fifo_n_28),
        .clk(clk),
        .\count_reg[0]_0 (event_fifo_n_59),
        .framing_error(framing_error),
        .framing_error_reg_0(uart_receiver_n_12),
        .p_1_in({uart_receiver_n_3,uart_receiver_n_4,uart_receiver_n_5,uart_receiver_n_6,uart_receiver_n_7,uart_receiver_n_8,uart_receiver_n_9,uart_receiver_n_10}),
        .rst(rst),
        .rx(rx),
        .\state0_inferred__0/i__carry_0 (clocks_per_bit),
        .\state0_inferred__0/i__carry__0_0 (event_fifo_n_57),
        .state10_in(state10_in),
        .\state1_inferred__0/i__carry__0_0 (state2),
        .valid(valid),
        .\write_pointer_reg[9] (event_fifo_n_24));
endmodule

(* ORIG_REF_NAME = "uart_rx_baud" *) 
module uart_system_uart_diag_baud_core_0_0_uart_rx_baud
   (valid,
    framing_error,
    Q,
    p_1_in,
    E,
    framing_error_reg_0,
    rst,
    rx,
    clk,
    SR,
    S,
    \count_reg[0]_0 ,
    \write_pointer_reg[9] ,
    \state0_inferred__0/i__carry_0 ,
    state10_in,
    \state0_inferred__0/i__carry__0_0 ,
    \state1_inferred__0/i__carry__0_0 ,
    CO);
  output valid;
  output framing_error;
  output [0:0]Q;
  output [7:0]p_1_in;
  output [0:0]E;
  output [0:0]framing_error_reg_0;
  input rst;
  input rx;
  input clk;
  input [0:0]SR;
  input [0:0]S;
  input [0:0]\count_reg[0]_0 ;
  input \write_pointer_reg[9] ;
  input [1:0]\state0_inferred__0/i__carry_0 ;
  input [11:0]state10_in;
  input [0:0]\state0_inferred__0/i__carry__0_0 ;
  input [12:0]\state1_inferred__0/i__carry__0_0 ;
  input [0:0]CO;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_inv_i_1_n_0 ;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire \bit_index[0]_i_1_n_0 ;
  wire \bit_index[0]_i_2_n_0 ;
  wire \bit_index[1]_i_1_n_0 ;
  wire \bit_index[1]_i_2_n_0 ;
  wire \bit_index[2]_i_1_n_0 ;
  wire \bit_index[2]_i_2_n_0 ;
  wire \bit_index[2]_i_3_n_0 ;
  wire \bit_index[2]_i_4_n_0 ;
  wire \bit_index_reg_n_0_[0] ;
  wire \bit_index_reg_n_0_[1] ;
  wire \bit_index_reg_n_0_[2] ;
  wire clk;
  wire count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[14]_i_1_n_0 ;
  wire \count[15]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire [0:0]\count_reg[0]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [7:0]data_out;
  wire \data_shift[0]_i_1_n_0 ;
  wire \data_shift[0]_i_2_n_0 ;
  wire \data_shift[1]_i_1_n_0 ;
  wire \data_shift[1]_i_2_n_0 ;
  wire \data_shift[2]_i_1_n_0 ;
  wire \data_shift[2]_i_2_n_0 ;
  wire \data_shift[3]_i_1_n_0 ;
  wire \data_shift[3]_i_2_n_0 ;
  wire \data_shift[4]_i_1_n_0 ;
  wire \data_shift[4]_i_2_n_0 ;
  wire \data_shift[5]_i_1_n_0 ;
  wire \data_shift[5]_i_2_n_0 ;
  wire \data_shift[6]_i_1_n_0 ;
  wire \data_shift[6]_i_2_n_0 ;
  wire \data_shift[7]_i_1_n_0 ;
  wire \data_shift[7]_i_2_n_0 ;
  wire \data_shift_reg_n_0_[0] ;
  wire \data_shift_reg_n_0_[1] ;
  wire \data_shift_reg_n_0_[2] ;
  wire \data_shift_reg_n_0_[3] ;
  wire \data_shift_reg_n_0_[4] ;
  wire \data_shift_reg_n_0_[5] ;
  wire \data_shift_reg_n_0_[6] ;
  wire \data_shift_reg_n_0_[7] ;
  wire framing_error;
  wire framing_error_i_1_n_0;
  wire [0:0]framing_error_reg_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire [7:0]p_1_in;
  wire rst;
  wire rx;
  (* async_reg = "true" *) wire rx_meta;
  (* async_reg = "true" *) wire rx_sync;
  wire state0;
  wire [1:0]\state0_inferred__0/i__carry_0 ;
  wire [0:0]\state0_inferred__0/i__carry__0_0 ;
  wire \state0_inferred__0/i__carry__0_n_3 ;
  wire \state0_inferred__0/i__carry_n_0 ;
  wire \state0_inferred__0/i__carry_n_1 ;
  wire \state0_inferred__0/i__carry_n_2 ;
  wire \state0_inferred__0/i__carry_n_3 ;
  wire state1;
  wire [11:0]state10_in;
  wire [12:0]\state1_inferred__0/i__carry__0_0 ;
  wire \state1_inferred__0/i__carry__0_n_3 ;
  wire \state1_inferred__0/i__carry_n_0 ;
  wire \state1_inferred__0/i__carry_n_1 ;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire [1:0]state__0;
  wire valid;
  wire valid_i_1_n_0;
  wire \write_pointer_reg[9] ;
  wire [3:2]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_state0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_state1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h202A8080757F8A8A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(count),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(state0),
        .I4(state__0[0]),
        .I5(rx_sync),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020A0A07A70F0F0)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(count),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(state0),
        .I4(state__0[0]),
        .I5(rx_sync),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC8888888)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state__0[0]),
        .I1(state1),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\bit_index_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \FSM_sequential_state[2]_inv_i_1 
       (.I0(count),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(rx_sync),
        .O(\FSM_sequential_state[2]_inv_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(state__0[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000" *) 
  (* inverted = "yes" *) 
  FDSE \FSM_sequential_state_reg[2]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_inv_i_1_n_0 ),
        .Q(count),
        .S(SR));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \bit_index[0]_i_1 
       (.I0(\bit_index[0]_i_2_n_0 ),
        .I1(\bit_index[2]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(\bit_index[2]_i_4_n_0 ),
        .I4(\bit_index_reg_n_0_[0] ),
        .O(\bit_index[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2E00)) 
    \bit_index[0]_i_2 
       (.I0(rx_sync),
        .I1(state__0[1]),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(count),
        .O(\bit_index[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \bit_index[1]_i_1 
       (.I0(\bit_index[1]_i_2_n_0 ),
        .I1(\bit_index[2]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(\bit_index[2]_i_4_n_0 ),
        .I4(\bit_index_reg_n_0_[1] ),
        .O(\bit_index[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2EE20000)) 
    \bit_index[1]_i_2 
       (.I0(rx_sync),
        .I1(state__0[1]),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .I4(count),
        .O(\bit_index[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \bit_index[2]_i_1 
       (.I0(\bit_index[2]_i_2_n_0 ),
        .I1(\bit_index[2]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(\bit_index[2]_i_4_n_0 ),
        .I4(\bit_index_reg_n_0_[2] ),
        .O(\bit_index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2EE2E2E200000000)) 
    \bit_index[2]_i_2 
       (.I0(rx_sync),
        .I1(state__0[1]),
        .I2(\bit_index_reg_n_0_[2] ),
        .I3(\bit_index_reg_n_0_[1] ),
        .I4(\bit_index_reg_n_0_[0] ),
        .I5(count),
        .O(\bit_index[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bit_index[2]_i_3 
       (.I0(rx_sync),
        .I1(state0),
        .I2(state__0[1]),
        .I3(count),
        .O(\bit_index[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080808080808080)) 
    \bit_index[2]_i_4 
       (.I0(count),
        .I1(state__0[1]),
        .I2(state1),
        .I3(\bit_index_reg_n_0_[0] ),
        .I4(\bit_index_reg_n_0_[2] ),
        .I5(\bit_index_reg_n_0_[1] ),
        .O(\bit_index[2]_i_4_n_0 ));
  FDRE \bit_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[0]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[0] ),
        .R(SR));
  FDRE \bit_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[1]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[1] ),
        .R(SR));
  FDRE \bit_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[2]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[2] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({NLW_count0_carry__2_CO_UNCONNECTED[3:2],count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__2_O_UNCONNECTED[3],count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({1'b0,Q,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  LUT5 #(
    .INIT(32'h00105510)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[10]_i_1 
       (.I0(count0_carry__1_n_6),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[11]_i_1 
       (.I0(count0_carry__1_n_5),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[12]_i_1 
       (.I0(count0_carry__1_n_4),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[13]_i_1 
       (.I0(count0_carry__2_n_7),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[14]_i_1 
       (.I0(count0_carry__2_n_6),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[15]_i_1 
       (.I0(count0_carry__2_n_5),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[1]_i_1 
       (.I0(count0_carry_n_7),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[2]_i_1 
       (.I0(count0_carry_n_6),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[3]_i_1 
       (.I0(count0_carry_n_5),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[4]_i_1 
       (.I0(count0_carry_n_4),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[5]_i_1 
       (.I0(count0_carry__0_n_7),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[6]_i_1 
       (.I0(count0_carry__0_n_6),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[7]_i_1 
       (.I0(count0_carry__0_n_5),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[8]_i_1 
       (.I0(count0_carry__0_n_4),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \count[9]_i_1 
       (.I0(count0_carry__1_n_7),
        .I1(state0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state1),
        .O(\count[9]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(SR));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(count),
        .D(\count[10]_i_1_n_0 ),
        .Q(\count_reg_n_0_[10] ),
        .R(SR));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(count),
        .D(\count[11]_i_1_n_0 ),
        .Q(\count_reg_n_0_[11] ),
        .R(SR));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(count),
        .D(\count[12]_i_1_n_0 ),
        .Q(\count_reg_n_0_[12] ),
        .R(SR));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(count),
        .D(\count[13]_i_1_n_0 ),
        .Q(\count_reg_n_0_[13] ),
        .R(SR));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(count),
        .D(\count[14]_i_1_n_0 ),
        .Q(\count_reg_n_0_[14] ),
        .R(SR));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(count),
        .D(\count[15]_i_1_n_0 ),
        .Q(Q),
        .R(SR));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(SR));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(SR));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(SR));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .D(\count[4]_i_1_n_0 ),
        .Q(\count_reg_n_0_[4] ),
        .R(SR));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(count),
        .D(\count[5]_i_1_n_0 ),
        .Q(\count_reg_n_0_[5] ),
        .R(SR));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(count),
        .D(\count[6]_i_1_n_0 ),
        .Q(\count_reg_n_0_[6] ),
        .R(SR));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(count),
        .D(\count[7]_i_1_n_0 ),
        .Q(\count_reg_n_0_[7] ),
        .R(SR));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(count),
        .D(\count[8]_i_1_n_0 ),
        .Q(\count_reg_n_0_[8] ),
        .R(SR));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(count),
        .D(\count[9]_i_1_n_0 ),
        .Q(\count_reg_n_0_[9] ),
        .R(SR));
  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[0] ),
        .Q(data_out[0]),
        .R(SR));
  FDRE \data_out_reg[1] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[1] ),
        .Q(data_out[1]),
        .R(SR));
  FDRE \data_out_reg[2] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[2] ),
        .Q(data_out[2]),
        .R(SR));
  FDRE \data_out_reg[3] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[3] ),
        .Q(data_out[3]),
        .R(SR));
  FDRE \data_out_reg[4] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[4] ),
        .Q(data_out[4]),
        .R(SR));
  FDRE \data_out_reg[5] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[5] ),
        .Q(data_out[5]),
        .R(SR));
  FDRE \data_out_reg[6] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[6] ),
        .Q(data_out[6]),
        .R(SR));
  FDRE \data_out_reg[7] 
       (.C(clk),
        .CE(valid_i_1_n_0),
        .D(\data_shift_reg_n_0_[7] ),
        .Q(data_out[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[0]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[0]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[0] ),
        .O(\data_shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \data_shift[0]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[1]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[1]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[1] ),
        .O(\data_shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \data_shift[1]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[2]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[2]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[2] ),
        .O(\data_shift[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \data_shift[2]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[3]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[3]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[3] ),
        .O(\data_shift[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \data_shift[3]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[4]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[4]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[4] ),
        .O(\data_shift[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \data_shift[4]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[5]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[5]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[5] ),
        .O(\data_shift[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \data_shift[5]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[6]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[6]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[6] ),
        .O(\data_shift[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \data_shift[6]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_shift[7]_i_1 
       (.I0(rx_sync),
        .I1(count),
        .I2(state__0[0]),
        .I3(\data_shift[7]_i_2_n_0 ),
        .I4(\data_shift_reg_n_0_[7] ),
        .O(\data_shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \data_shift[7]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(state1),
        .I4(state__0[1]),
        .O(\data_shift[7]_i_2_n_0 ));
  FDRE \data_shift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[0]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[0] ),
        .R(SR));
  FDRE \data_shift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[1]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[1] ),
        .R(SR));
  FDRE \data_shift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[2]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[2] ),
        .R(SR));
  FDRE \data_shift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[3]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[3] ),
        .R(SR));
  FDRE \data_shift_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[4]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[4] ),
        .R(SR));
  FDRE \data_shift_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[5]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[5] ),
        .R(SR));
  FDRE \data_shift_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[6]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[6] ),
        .R(SR));
  FDRE \data_shift_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[7]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[7] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h20000000)) 
    framing_error_i_1
       (.I0(state1),
        .I1(rx_sync),
        .I2(count),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(framing_error_i_1_n_0));
  FDRE framing_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(framing_error_i_1_n_0),
        .Q(framing_error),
        .R(SR));
  LUT5 #(
    .INIT(32'h09000090)) 
    i__carry__0_i_2
       (.I0(\count_reg_n_0_[12] ),
        .I1(state10_in[11]),
        .I2(\state0_inferred__0/i__carry__0_0 ),
        .I3(\count_reg_n_0_[14] ),
        .I4(\count_reg_n_0_[13] ),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    i__carry__0_i_2__0
       (.I0(\count_reg_n_0_[12] ),
        .I1(\state1_inferred__0/i__carry__0_0 [11]),
        .I2(CO),
        .I3(\count_reg_n_0_[14] ),
        .I4(\state1_inferred__0/i__carry__0_0 [12]),
        .I5(\count_reg_n_0_[13] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(\count_reg_n_0_[9] ),
        .I1(state10_in[8]),
        .I2(state10_in[10]),
        .I3(\count_reg_n_0_[11] ),
        .I4(state10_in[9]),
        .I5(\count_reg_n_0_[10] ),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(\count_reg_n_0_[9] ),
        .I1(\state1_inferred__0/i__carry__0_0 [8]),
        .I2(\state1_inferred__0/i__carry__0_0 [10]),
        .I3(\count_reg_n_0_[11] ),
        .I4(\state1_inferred__0/i__carry__0_0 [9]),
        .I5(\count_reg_n_0_[10] ),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(\count_reg_n_0_[6] ),
        .I1(state10_in[5]),
        .I2(state10_in[7]),
        .I3(\count_reg_n_0_[8] ),
        .I4(state10_in[6]),
        .I5(\count_reg_n_0_[7] ),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(\count_reg_n_0_[6] ),
        .I1(\state1_inferred__0/i__carry__0_0 [5]),
        .I2(\state1_inferred__0/i__carry__0_0 [7]),
        .I3(\count_reg_n_0_[8] ),
        .I4(\state1_inferred__0/i__carry__0_0 [6]),
        .I5(\count_reg_n_0_[7] ),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(\count_reg_n_0_[3] ),
        .I1(state10_in[2]),
        .I2(state10_in[4]),
        .I3(\count_reg_n_0_[5] ),
        .I4(state10_in[3]),
        .I5(\count_reg_n_0_[4] ),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(\count_reg_n_0_[3] ),
        .I1(\state1_inferred__0/i__carry__0_0 [2]),
        .I2(\state1_inferred__0/i__carry__0_0 [4]),
        .I3(\count_reg_n_0_[5] ),
        .I4(\state1_inferred__0/i__carry__0_0 [3]),
        .I5(\count_reg_n_0_[4] ),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    i__carry_i_4
       (.I0(\count_reg_n_0_[0] ),
        .I1(\state0_inferred__0/i__carry_0 [1]),
        .I2(state10_in[1]),
        .I3(\count_reg_n_0_[2] ),
        .I4(state10_in[0]),
        .I5(\count_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    i__carry_i_4__0
       (.I0(\count_reg_n_0_[0] ),
        .I1(\state0_inferred__0/i__carry_0 [0]),
        .I2(\state1_inferred__0/i__carry__0_0 [1]),
        .I3(\count_reg_n_0_[2] ),
        .I4(\state1_inferred__0/i__carry__0_0 [0]),
        .I5(\count_reg_n_0_[1] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_0_2_i_1
       (.I0(data_out[0]),
        .I1(framing_error),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_0_2_i_2
       (.I0(data_out[1]),
        .I1(framing_error),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_0_2_i_3
       (.I0(data_out[2]),
        .I1(framing_error),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_3_5_i_1
       (.I0(data_out[3]),
        .I1(framing_error),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_3_5_i_2
       (.I0(data_out[4]),
        .I1(framing_error),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_3_5_i_3
       (.I0(data_out[5]),
        .I1(framing_error),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_6_8_i_1
       (.I0(data_out[6]),
        .I1(framing_error),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_6_8_i_2
       (.I0(data_out[7]),
        .I1(framing_error),
        .O(p_1_in[7]));
  LUT3 #(
    .INIT(8'hA8)) 
    \occupancy[4]_i_2 
       (.I0(\write_pointer_reg[9] ),
        .I1(framing_error),
        .I2(valid),
        .O(framing_error_reg_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE rx_meta_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .Q(rx_meta),
        .S(rst));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE rx_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_meta),
        .Q(rx_sync),
        .S(rst));
  CARRY4 \state0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state0_inferred__0/i__carry_n_0 ,\state0_inferred__0/i__carry_n_1 ,\state0_inferred__0/i__carry_n_2 ,\state0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \state0_inferred__0/i__carry__0 
       (.CI(\state0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],state0,\state0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,S,i__carry__0_i_2_n_0}));
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__0/i__carry_n_0 ,\state1_inferred__0/i__carry_n_1 ,\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \state1_inferred__0/i__carry__0 
       (.CI(\state1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_state1_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],state1,\state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\count_reg[0]_0 ,i__carry__0_i_2__0_n_0}));
  LUT5 #(
    .INIT(32'h80000000)) 
    valid_i_1
       (.I0(state1),
        .I1(rx_sync),
        .I2(count),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(valid_i_1_n_0));
  FDRE valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_i_1_n_0),
        .Q(valid),
        .R(SR));
  LUT3 #(
    .INIT(8'hA8)) 
    \write_pointer[9]_i_1 
       (.I0(\write_pointer_reg[9] ),
        .I1(framing_error),
        .I2(valid),
        .O(E));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
