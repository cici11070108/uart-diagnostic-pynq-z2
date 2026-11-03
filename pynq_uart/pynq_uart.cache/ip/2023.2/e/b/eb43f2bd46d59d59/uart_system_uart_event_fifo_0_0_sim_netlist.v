// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Oct 28 08:52:23 2026
// Host        : cici-legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_system_uart_event_fifo_0_0_sim_netlist.v
// Design      : uart_system_uart_event_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_event_fifo
   (status,
    \occupancy_reg[3]_0 ,
    valid_in,
    framing_error_in,
    data_in,
    command,
    rst,
    clk);
  output [10:0]status;
  output [12:0]\occupancy_reg[3]_0 ;
  input valid_in;
  input framing_error_in;
  input [7:0]data_in;
  input [2:0]command;
  input rst;
  input clk;

  wire ack_toggle_i_1_n_0;
  wire clk;
  wire [2:0]command;
  wire [7:0]data_in;
  wire framing_error_in;
  wire [8:8]head0;
  wire memory_reg_0_63_0_2_i_1_n_0;
  wire memory_reg_0_63_0_2_i_2_n_0;
  wire memory_reg_0_63_0_2_i_3_n_0;
  wire memory_reg_0_63_0_2_i_4_n_0;
  wire memory_reg_0_63_0_2_i_5_n_0;
  wire memory_reg_0_63_0_2_i_6_n_0;
  wire memory_reg_0_63_0_2_n_0;
  wire memory_reg_0_63_0_2_n_1;
  wire memory_reg_0_63_0_2_n_2;
  wire memory_reg_0_63_3_5_i_1_n_0;
  wire memory_reg_0_63_3_5_i_2_n_0;
  wire memory_reg_0_63_3_5_i_3_n_0;
  wire memory_reg_0_63_3_5_n_0;
  wire memory_reg_0_63_3_5_n_1;
  wire memory_reg_0_63_3_5_n_2;
  wire memory_reg_0_63_6_8_i_1_n_0;
  wire memory_reg_0_63_6_8_i_2_n_0;
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
  wire [10:0]occupancy;
  wire \occupancy[10]_i_2_n_0 ;
  wire \occupancy[10]_i_4_n_0 ;
  wire \occupancy[10]_i_5_n_0 ;
  wire \occupancy[10]_i_6_n_0 ;
  wire \occupancy[10]_i_7_n_0 ;
  wire \occupancy[4]_i_2_n_0 ;
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
  wire [12:0]\occupancy_reg[3]_0 ;
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
  wire overflow_i_3_n_0;
  wire overflow_i_4_n_0;
  wire [9:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire pop_accepted;
  wire push_accepted;
  wire \read_pointer[9]_i_3_n_0 ;
  wire [9:0]read_pointer_reg;
  wire rst;
  wire [10:0]status;
  wire \status[0]_INST_0_i_1_n_0 ;
  wire \status[0]_INST_0_i_2_n_0 ;
  wire \status[0]_INST_0_i_3_n_0 ;
  wire \status[0]_INST_0_i_4_n_0 ;
  wire \status[0]_INST_0_i_5_n_0 ;
  wire \status[0]_INST_0_i_6_n_0 ;
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
  wire \status[1]_INST_0_i_6_n_0 ;
  wire \status[2]_INST_0_i_1_n_0 ;
  wire \status[2]_INST_0_i_2_n_0 ;
  wire \status[2]_INST_0_i_3_n_0 ;
  wire \status[2]_INST_0_i_4_n_0 ;
  wire \status[2]_INST_0_i_5_n_0 ;
  wire \status[2]_INST_0_i_6_n_0 ;
  wire \status[3]_INST_0_i_1_n_0 ;
  wire \status[3]_INST_0_i_2_n_0 ;
  wire \status[3]_INST_0_i_3_n_0 ;
  wire \status[3]_INST_0_i_4_n_0 ;
  wire \status[3]_INST_0_i_5_n_0 ;
  wire \status[3]_INST_0_i_6_n_0 ;
  wire \status[4]_INST_0_i_1_n_0 ;
  wire \status[4]_INST_0_i_2_n_0 ;
  wire \status[4]_INST_0_i_3_n_0 ;
  wire \status[4]_INST_0_i_4_n_0 ;
  wire \status[4]_INST_0_i_5_n_0 ;
  wire \status[4]_INST_0_i_6_n_0 ;
  wire \status[5]_INST_0_i_1_n_0 ;
  wire \status[5]_INST_0_i_2_n_0 ;
  wire \status[5]_INST_0_i_3_n_0 ;
  wire \status[5]_INST_0_i_4_n_0 ;
  wire \status[5]_INST_0_i_5_n_0 ;
  wire \status[5]_INST_0_i_6_n_0 ;
  wire \status[6]_INST_0_i_1_n_0 ;
  wire \status[6]_INST_0_i_2_n_0 ;
  wire \status[6]_INST_0_i_3_n_0 ;
  wire \status[6]_INST_0_i_4_n_0 ;
  wire \status[6]_INST_0_i_5_n_0 ;
  wire \status[6]_INST_0_i_6_n_0 ;
  wire \status[7]_INST_0_i_1_n_0 ;
  wire \status[7]_INST_0_i_2_n_0 ;
  wire \status[7]_INST_0_i_3_n_0 ;
  wire \status[7]_INST_0_i_4_n_0 ;
  wire \status[7]_INST_0_i_5_n_0 ;
  wire \status[7]_INST_0_i_6_n_0 ;
  wire \status[9]_INST_0_i_1_n_0 ;
  wire valid_in;
  wire \write_pointer[9]_i_3_n_0 ;
  wire \write_pointer[9]_i_4_n_0 ;
  wire [9:0]write_pointer_reg;
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

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ack_toggle_i_1
       (.I0(command[0]),
        .I1(rst),
        .O(ack_toggle_i_1_n_0));
  FDRE ack_toggle_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_toggle_i_1_n_0),
        .Q(\occupancy_reg[3]_0 [11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_0_63_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_0_63_0_2_n_0),
        .DOB(memory_reg_0_63_0_2_n_1),
        .DOC(memory_reg_0_63_0_2_n_2),
        .DOD(NLW_memory_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_0_63_0_2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_0_2_i_1
       (.I0(data_in[0]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_0_2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_0_2_i_2
       (.I0(data_in[1]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_0_2_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_0_2_i_3
       (.I0(data_in[2]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_0_2_i_3_n_0));
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
    .INIT(64'hA2A2A2A2A2A222A2)) 
    memory_reg_0_63_0_2_i_5
       (.I0(memory_reg_0_63_0_2_i_6_n_0),
        .I1(\occupancy[10]_i_5_n_0 ),
        .I2(overflow_i_3_n_0),
        .I3(status[10]),
        .I4(\status[9]_INST_0_i_1_n_0 ),
        .I5(overflow_i_4_n_0),
        .O(memory_reg_0_63_0_2_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    memory_reg_0_63_0_2_i_6
       (.I0(framing_error_in),
        .I1(valid_in),
        .I2(rst),
        .O(memory_reg_0_63_0_2_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_0_63_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_0_63_3_5_n_0),
        .DOB(memory_reg_0_63_3_5_n_1),
        .DOC(memory_reg_0_63_3_5_n_2),
        .DOD(NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_0_63_0_2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_3_5_i_1
       (.I0(data_in[3]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_3_5_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_3_5_i_2
       (.I0(data_in[4]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_3_5_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_3_5_i_3
       (.I0(data_in[5]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_3_5_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_0_63_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_0_63_6_8_n_0),
        .DOB(memory_reg_0_63_6_8_n_1),
        .DOC(memory_reg_0_63_6_8_n_2),
        .DOD(NLW_memory_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_0_63_0_2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_6_8_i_1
       (.I0(data_in[6]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_6_8_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_0_63_6_8_i_2
       (.I0(data_in[7]),
        .I1(framing_error_in),
        .O(memory_reg_0_63_6_8_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_128_191_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_128_191_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_128_191_3_5_n_0),
        .DOB(memory_reg_128_191_3_5_n_1),
        .DOC(memory_reg_128_191_3_5_n_2),
        .DOD(NLW_memory_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_128_191_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_128_191_6_8_n_0),
        .DOB(memory_reg_128_191_6_8_n_1),
        .DOC(memory_reg_128_191_6_8_n_2),
        .DOD(NLW_memory_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_192_255_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_192_255_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_192_255_3_5_n_0),
        .DOB(memory_reg_192_255_3_5_n_1),
        .DOC(memory_reg_192_255_3_5_n_2),
        .DOD(NLW_memory_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_192_255_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_192_255_6_8_n_0),
        .DOB(memory_reg_192_255_6_8_n_1),
        .DOC(memory_reg_192_255_6_8_n_2),
        .DOD(NLW_memory_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_256_319_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_256_319_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_256_319_3_5_n_0),
        .DOB(memory_reg_256_319_3_5_n_1),
        .DOC(memory_reg_256_319_3_5_n_2),
        .DOD(NLW_memory_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_256_319_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_256_319_6_8_n_0),
        .DOB(memory_reg_256_319_6_8_n_1),
        .DOC(memory_reg_256_319_6_8_n_2),
        .DOD(NLW_memory_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_320_383_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_320_383_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_320_383_3_5_n_0),
        .DOB(memory_reg_320_383_3_5_n_1),
        .DOC(memory_reg_320_383_3_5_n_2),
        .DOD(NLW_memory_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_320_383_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_320_383_6_8_n_0),
        .DOB(memory_reg_320_383_6_8_n_1),
        .DOC(memory_reg_320_383_6_8_n_2),
        .DOD(NLW_memory_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_384_447_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_384_447_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_384_447_3_5_n_0),
        .DOB(memory_reg_384_447_3_5_n_1),
        .DOC(memory_reg_384_447_3_5_n_2),
        .DOD(NLW_memory_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_384_447_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_384_447_6_8_n_0),
        .DOB(memory_reg_384_447_6_8_n_1),
        .DOC(memory_reg_384_447_6_8_n_2),
        .DOD(NLW_memory_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_448_511_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_448_511_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_448_511_3_5_n_0),
        .DOB(memory_reg_448_511_3_5_n_1),
        .DOC(memory_reg_448_511_3_5_n_2),
        .DOD(NLW_memory_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_448_511_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_448_511_6_8_n_0),
        .DOB(memory_reg_448_511_6_8_n_1),
        .DOC(memory_reg_448_511_6_8_n_2),
        .DOD(NLW_memory_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_512_575_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_512_575_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_512_575_3_5_n_0),
        .DOB(memory_reg_512_575_3_5_n_1),
        .DOC(memory_reg_512_575_3_5_n_2),
        .DOD(NLW_memory_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_512_575_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_512_575_6_8_n_0),
        .DOB(memory_reg_512_575_6_8_n_1),
        .DOC(memory_reg_512_575_6_8_n_2),
        .DOD(NLW_memory_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_576_639_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_576_639_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_576_639_3_5_n_0),
        .DOB(memory_reg_576_639_3_5_n_1),
        .DOC(memory_reg_576_639_3_5_n_2),
        .DOD(NLW_memory_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_576_639_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_576_639_6_8_n_0),
        .DOB(memory_reg_576_639_6_8_n_1),
        .DOC(memory_reg_576_639_6_8_n_2),
        .DOD(NLW_memory_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_640_703_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_640_703_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_640_703_3_5_n_0),
        .DOB(memory_reg_640_703_3_5_n_1),
        .DOC(memory_reg_640_703_3_5_n_2),
        .DOD(NLW_memory_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_640_703_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_640_703_6_8_n_0),
        .DOB(memory_reg_640_703_6_8_n_1),
        .DOC(memory_reg_640_703_6_8_n_2),
        .DOD(NLW_memory_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_64_127_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_64_127_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_64_127_3_5_n_0),
        .DOB(memory_reg_64_127_3_5_n_1),
        .DOC(memory_reg_64_127_3_5_n_2),
        .DOD(NLW_memory_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_64_127_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_64_127_6_8_n_0),
        .DOB(memory_reg_64_127_6_8_n_1),
        .DOC(memory_reg_64_127_6_8_n_2),
        .DOD(NLW_memory_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_704_767_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_704_767_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_704_767_3_5_n_0),
        .DOB(memory_reg_704_767_3_5_n_1),
        .DOC(memory_reg_704_767_3_5_n_2),
        .DOD(NLW_memory_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_704_767_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_704_767_6_8_n_0),
        .DOB(memory_reg_704_767_6_8_n_1),
        .DOC(memory_reg_704_767_6_8_n_2),
        .DOD(NLW_memory_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_768_831_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_768_831_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_768_831_3_5_n_0),
        .DOB(memory_reg_768_831_3_5_n_1),
        .DOC(memory_reg_768_831_3_5_n_2),
        .DOD(NLW_memory_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_768_831_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_768_831_6_8_n_0),
        .DOB(memory_reg_768_831_6_8_n_1),
        .DOC(memory_reg_768_831_6_8_n_2),
        .DOD(NLW_memory_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_832_895_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_832_895_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_832_895_3_5_n_0),
        .DOB(memory_reg_832_895_3_5_n_1),
        .DOC(memory_reg_832_895_3_5_n_2),
        .DOD(NLW_memory_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_832_895_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_832_895_6_8_n_0),
        .DOB(memory_reg_832_895_6_8_n_1),
        .DOC(memory_reg_832_895_6_8_n_2),
        .DOD(NLW_memory_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_896_959_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_896_959_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_896_959_3_5_n_0),
        .DOB(memory_reg_896_959_3_5_n_1),
        .DOC(memory_reg_896_959_3_5_n_2),
        .DOD(NLW_memory_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_896_959_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
        .DID(1'b0),
        .DOA(memory_reg_896_959_6_8_n_0),
        .DOB(memory_reg_896_959_6_8_n_1),
        .DOC(memory_reg_896_959_6_8_n_2),
        .DOD(NLW_memory_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_960_1023_0_2" *) 
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
        .DIA(memory_reg_0_63_0_2_i_1_n_0),
        .DIB(memory_reg_0_63_0_2_i_2_n_0),
        .DIC(memory_reg_0_63_0_2_i_3_n_0),
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
  (* RTL_RAM_NAME = "inst/memory_reg_960_1023_3_5" *) 
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
        .DIA(memory_reg_0_63_3_5_i_1_n_0),
        .DIB(memory_reg_0_63_3_5_i_2_n_0),
        .DIC(memory_reg_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(memory_reg_960_1023_3_5_n_0),
        .DOB(memory_reg_960_1023_3_5_n_1),
        .DOC(memory_reg_960_1023_3_5_n_2),
        .DOD(NLW_memory_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(memory_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/memory_reg_960_1023_6_8" *) 
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
        .DIA(memory_reg_0_63_6_8_i_1_n_0),
        .DIB(memory_reg_0_63_6_8_i_2_n_0),
        .DIC(framing_error_in),
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
       (.I0(status[0]),
        .O(occupancy[0]));
  LUT5 #(
    .INIT(32'hAABABAAA)) 
    \occupancy[10]_i_1 
       (.I0(rst),
        .I1(command[1]),
        .I2(command[2]),
        .I3(command[0]),
        .I4(\occupancy_reg[3]_0 [11]),
        .O(occupancy_0));
  LUT5 #(
    .INIT(32'hEE0E111E)) 
    \occupancy[10]_i_2 
       (.I0(valid_in),
        .I1(framing_error_in),
        .I2(status[10]),
        .I3(\occupancy[10]_i_4_n_0 ),
        .I4(\occupancy[10]_i_5_n_0 ),
        .O(\occupancy[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \occupancy[10]_i_4 
       (.I0(\status[9]_INST_0_i_1_n_0 ),
        .I1(status[4]),
        .I2(status[5]),
        .I3(status[2]),
        .I4(status[3]),
        .O(\occupancy[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \occupancy[10]_i_5 
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(command[0]),
        .I2(command[2]),
        .I3(command[1]),
        .O(\occupancy[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[10]_i_6 
       (.I0(status[9]),
        .I1(status[10]),
        .O(\occupancy[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[10]_i_7 
       (.I0(status[8]),
        .I1(status[9]),
        .O(\occupancy[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDDD0)) 
    \occupancy[4]_i_2 
       (.I0(\occupancy[10]_i_5_n_0 ),
        .I1(\write_pointer[9]_i_3_n_0 ),
        .I2(framing_error_in),
        .I3(valid_in),
        .O(\occupancy[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[4]_i_3 
       (.I0(status[3]),
        .I1(status[4]),
        .O(\occupancy[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[4]_i_4 
       (.I0(status[2]),
        .I1(status[3]),
        .O(\occupancy[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[4]_i_5 
       (.I0(status[1]),
        .I1(status[2]),
        .O(\occupancy[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA955A9A9)) 
    \occupancy[4]_i_6 
       (.I0(status[1]),
        .I1(valid_in),
        .I2(framing_error_in),
        .I3(\write_pointer[9]_i_3_n_0 ),
        .I4(\occupancy[10]_i_5_n_0 ),
        .O(\occupancy[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_2 
       (.I0(status[7]),
        .I1(status[8]),
        .O(\occupancy[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_3 
       (.I0(status[6]),
        .I1(status[7]),
        .O(\occupancy[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_4 
       (.I0(status[5]),
        .I1(status[6]),
        .O(\occupancy[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \occupancy[8]_i_5 
       (.I0(status[4]),
        .I1(status[5]),
        .O(\occupancy[8]_i_5_n_0 ));
  FDRE \occupancy_reg[0] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[0]),
        .Q(status[0]),
        .R(occupancy_0));
  FDRE \occupancy_reg[10] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[10]),
        .Q(status[10]),
        .R(occupancy_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \occupancy_reg[10]_i_3 
       (.CI(\occupancy_reg[8]_i_1_n_0 ),
        .CO({\NLW_occupancy_reg[10]_i_3_CO_UNCONNECTED [3:1],\occupancy_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,status[8]}),
        .O({\NLW_occupancy_reg[10]_i_3_O_UNCONNECTED [3:2],occupancy[10:9]}),
        .S({1'b0,1'b0,\occupancy[10]_i_6_n_0 ,\occupancy[10]_i_7_n_0 }));
  FDRE \occupancy_reg[1] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[1]),
        .Q(status[1]),
        .R(occupancy_0));
  FDRE \occupancy_reg[2] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[2]),
        .Q(status[2]),
        .R(occupancy_0));
  FDRE \occupancy_reg[3] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[3]),
        .Q(status[3]),
        .R(occupancy_0));
  FDRE \occupancy_reg[4] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[4]),
        .Q(status[4]),
        .R(occupancy_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \occupancy_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\occupancy_reg[4]_i_1_n_0 ,\occupancy_reg[4]_i_1_n_1 ,\occupancy_reg[4]_i_1_n_2 ,\occupancy_reg[4]_i_1_n_3 }),
        .CYINIT(status[0]),
        .DI({status[3:1],\occupancy[4]_i_2_n_0 }),
        .O(occupancy[4:1]),
        .S({\occupancy[4]_i_3_n_0 ,\occupancy[4]_i_4_n_0 ,\occupancy[4]_i_5_n_0 ,\occupancy[4]_i_6_n_0 }));
  FDRE \occupancy_reg[5] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[5]),
        .Q(status[5]),
        .R(occupancy_0));
  FDRE \occupancy_reg[6] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[6]),
        .Q(status[6]),
        .R(occupancy_0));
  FDRE \occupancy_reg[7] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[7]),
        .Q(status[7]),
        .R(occupancy_0));
  FDRE \occupancy_reg[8] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[8]),
        .Q(status[8]),
        .R(occupancy_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \occupancy_reg[8]_i_1 
       (.CI(\occupancy_reg[4]_i_1_n_0 ),
        .CO({\occupancy_reg[8]_i_1_n_0 ,\occupancy_reg[8]_i_1_n_1 ,\occupancy_reg[8]_i_1_n_2 ,\occupancy_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(status[7:4]),
        .O(occupancy[8:5]),
        .S({\occupancy[8]_i_2_n_0 ,\occupancy[8]_i_3_n_0 ,\occupancy[8]_i_4_n_0 ,\occupancy[8]_i_5_n_0 }));
  FDRE \occupancy_reg[9] 
       (.C(clk),
        .CE(\occupancy[10]_i_2_n_0 ),
        .D(occupancy[9]),
        .Q(status[9]),
        .R(occupancy_0));
  LUT6 #(
    .INIT(64'h5555111000000000)) 
    overflow_i_1
       (.I0(rst),
        .I1(overflow_i_2_n_0),
        .I2(valid_in),
        .I3(framing_error_in),
        .I4(\occupancy_reg[3]_0 [10]),
        .I5(overflow_i_3_n_0),
        .O(overflow_i_1_n_0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    overflow_i_2
       (.I0(status[10]),
        .I1(\status[9]_INST_0_i_1_n_0 ),
        .I2(overflow_i_4_n_0),
        .I3(\occupancy[10]_i_5_n_0 ),
        .O(overflow_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF9F)) 
    overflow_i_3
       (.I0(\occupancy_reg[3]_0 [11]),
        .I1(command[0]),
        .I2(command[2]),
        .I3(command[1]),
        .O(overflow_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    overflow_i_4
       (.I0(status[3]),
        .I1(status[2]),
        .I2(status[5]),
        .I3(status[4]),
        .O(overflow_i_4_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[2]_i_1 
       (.I0(read_pointer_reg[1]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[3]_i_1 
       (.I0(read_pointer_reg[2]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[1]),
        .I3(read_pointer_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[6]_i_1 
       (.I0(\read_pointer[9]_i_3_n_0 ),
        .I1(read_pointer_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[7]_i_1 
       (.I0(read_pointer_reg[6]),
        .I1(\read_pointer[9]_i_3_n_0 ),
        .I2(read_pointer_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[8]_i_1 
       (.I0(\read_pointer[9]_i_3_n_0 ),
        .I1(read_pointer_reg[6]),
        .I2(read_pointer_reg[7]),
        .I3(read_pointer_reg[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \read_pointer[9]_i_1 
       (.I0(\occupancy_reg[3]_0 [9]),
        .I1(command[1]),
        .I2(command[2]),
        .I3(command[0]),
        .I4(\occupancy_reg[3]_0 [11]),
        .O(pop_accepted));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[0]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[0]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[0]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [0]));
  MUXF7 \status[0]_INST_0_i_1 
       (.I0(\status[0]_INST_0_i_3_n_0 ),
        .I1(\status[0]_INST_0_i_4_n_0 ),
        .O(\status[0]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[0]_INST_0_i_2 
       (.I0(\status[0]_INST_0_i_5_n_0 ),
        .I1(\status[0]_INST_0_i_6_n_0 ),
        .O(\status[0]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_3 
       (.I0(memory_reg_192_255_0_2_n_0),
        .I1(memory_reg_128_191_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_0_2_n_0),
        .O(\status[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_4 
       (.I0(memory_reg_448_511_0_2_n_0),
        .I1(memory_reg_384_447_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_0_2_n_0),
        .O(\status[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_5 
       (.I0(memory_reg_704_767_0_2_n_0),
        .I1(memory_reg_640_703_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_0_2_n_0),
        .O(\status[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[0]_INST_0_i_6 
       (.I0(memory_reg_960_1023_0_2_n_0),
        .I1(memory_reg_896_959_0_2_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_0_2_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_0_2_n_0),
        .O(\status[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \status[12]_INST_0 
       (.I0(\occupancy_reg[3]_0 [9]),
        .I1(head0),
        .O(\occupancy_reg[3]_0 [12]));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[1]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[1]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[1]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [1]));
  MUXF7 \status[1]_INST_0_i_1 
       (.I0(\status[1]_INST_0_i_3_n_0 ),
        .I1(\status[1]_INST_0_i_4_n_0 ),
        .O(\status[1]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[1]_INST_0_i_2 
       (.I0(\status[1]_INST_0_i_5_n_0 ),
        .I1(\status[1]_INST_0_i_6_n_0 ),
        .O(\status[1]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_3 
       (.I0(memory_reg_192_255_0_2_n_1),
        .I1(memory_reg_128_191_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_0_2_n_1),
        .O(\status[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_4 
       (.I0(memory_reg_448_511_0_2_n_1),
        .I1(memory_reg_384_447_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_0_2_n_1),
        .O(\status[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_5 
       (.I0(memory_reg_704_767_0_2_n_1),
        .I1(memory_reg_640_703_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_0_2_n_1),
        .O(\status[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[1]_INST_0_i_6 
       (.I0(memory_reg_960_1023_0_2_n_1),
        .I1(memory_reg_896_959_0_2_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_0_2_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_0_2_n_1),
        .O(\status[1]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[2]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[2]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[2]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [2]));
  MUXF7 \status[2]_INST_0_i_1 
       (.I0(\status[2]_INST_0_i_3_n_0 ),
        .I1(\status[2]_INST_0_i_4_n_0 ),
        .O(\status[2]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[2]_INST_0_i_2 
       (.I0(\status[2]_INST_0_i_5_n_0 ),
        .I1(\status[2]_INST_0_i_6_n_0 ),
        .O(\status[2]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_3 
       (.I0(memory_reg_192_255_0_2_n_2),
        .I1(memory_reg_128_191_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_0_2_n_2),
        .O(\status[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_4 
       (.I0(memory_reg_448_511_0_2_n_2),
        .I1(memory_reg_384_447_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_0_2_n_2),
        .O(\status[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_5 
       (.I0(memory_reg_704_767_0_2_n_2),
        .I1(memory_reg_640_703_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_0_2_n_2),
        .O(\status[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[2]_INST_0_i_6 
       (.I0(memory_reg_960_1023_0_2_n_2),
        .I1(memory_reg_896_959_0_2_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_0_2_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_0_2_n_2),
        .O(\status[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[3]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[3]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[3]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [3]));
  MUXF7 \status[3]_INST_0_i_1 
       (.I0(\status[3]_INST_0_i_3_n_0 ),
        .I1(\status[3]_INST_0_i_4_n_0 ),
        .O(\status[3]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[3]_INST_0_i_2 
       (.I0(\status[3]_INST_0_i_5_n_0 ),
        .I1(\status[3]_INST_0_i_6_n_0 ),
        .O(\status[3]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_3 
       (.I0(memory_reg_192_255_3_5_n_0),
        .I1(memory_reg_128_191_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_3_5_n_0),
        .O(\status[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_4 
       (.I0(memory_reg_448_511_3_5_n_0),
        .I1(memory_reg_384_447_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_3_5_n_0),
        .O(\status[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_5 
       (.I0(memory_reg_704_767_3_5_n_0),
        .I1(memory_reg_640_703_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_3_5_n_0),
        .O(\status[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[3]_INST_0_i_6 
       (.I0(memory_reg_960_1023_3_5_n_0),
        .I1(memory_reg_896_959_3_5_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_3_5_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_3_5_n_0),
        .O(\status[3]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[4]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[4]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[4]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [4]));
  MUXF7 \status[4]_INST_0_i_1 
       (.I0(\status[4]_INST_0_i_3_n_0 ),
        .I1(\status[4]_INST_0_i_4_n_0 ),
        .O(\status[4]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[4]_INST_0_i_2 
       (.I0(\status[4]_INST_0_i_5_n_0 ),
        .I1(\status[4]_INST_0_i_6_n_0 ),
        .O(\status[4]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_3 
       (.I0(memory_reg_192_255_3_5_n_1),
        .I1(memory_reg_128_191_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_3_5_n_1),
        .O(\status[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_4 
       (.I0(memory_reg_448_511_3_5_n_1),
        .I1(memory_reg_384_447_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_3_5_n_1),
        .O(\status[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_5 
       (.I0(memory_reg_704_767_3_5_n_1),
        .I1(memory_reg_640_703_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_3_5_n_1),
        .O(\status[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[4]_INST_0_i_6 
       (.I0(memory_reg_960_1023_3_5_n_1),
        .I1(memory_reg_896_959_3_5_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_3_5_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_3_5_n_1),
        .O(\status[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[5]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[5]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[5]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [5]));
  MUXF7 \status[5]_INST_0_i_1 
       (.I0(\status[5]_INST_0_i_3_n_0 ),
        .I1(\status[5]_INST_0_i_4_n_0 ),
        .O(\status[5]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[5]_INST_0_i_2 
       (.I0(\status[5]_INST_0_i_5_n_0 ),
        .I1(\status[5]_INST_0_i_6_n_0 ),
        .O(\status[5]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_3 
       (.I0(memory_reg_192_255_3_5_n_2),
        .I1(memory_reg_128_191_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_3_5_n_2),
        .O(\status[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_4 
       (.I0(memory_reg_448_511_3_5_n_2),
        .I1(memory_reg_384_447_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_3_5_n_2),
        .O(\status[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_5 
       (.I0(memory_reg_704_767_3_5_n_2),
        .I1(memory_reg_640_703_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_3_5_n_2),
        .O(\status[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[5]_INST_0_i_6 
       (.I0(memory_reg_960_1023_3_5_n_2),
        .I1(memory_reg_896_959_3_5_n_2),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_3_5_n_2),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_3_5_n_2),
        .O(\status[5]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[6]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[6]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[6]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [6]));
  MUXF7 \status[6]_INST_0_i_1 
       (.I0(\status[6]_INST_0_i_3_n_0 ),
        .I1(\status[6]_INST_0_i_4_n_0 ),
        .O(\status[6]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[6]_INST_0_i_2 
       (.I0(\status[6]_INST_0_i_5_n_0 ),
        .I1(\status[6]_INST_0_i_6_n_0 ),
        .O(\status[6]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_3 
       (.I0(memory_reg_192_255_6_8_n_0),
        .I1(memory_reg_128_191_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_6_8_n_0),
        .O(\status[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_4 
       (.I0(memory_reg_448_511_6_8_n_0),
        .I1(memory_reg_384_447_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_6_8_n_0),
        .O(\status[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_5 
       (.I0(memory_reg_704_767_6_8_n_0),
        .I1(memory_reg_640_703_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_6_8_n_0),
        .O(\status[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[6]_INST_0_i_6 
       (.I0(memory_reg_960_1023_6_8_n_0),
        .I1(memory_reg_896_959_6_8_n_0),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_6_8_n_0),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_6_8_n_0),
        .O(\status[6]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \status[7]_INST_0 
       (.I0(head0),
        .I1(\occupancy_reg[3]_0 [9]),
        .I2(\status[7]_INST_0_i_1_n_0 ),
        .I3(read_pointer_reg[9]),
        .I4(\status[7]_INST_0_i_2_n_0 ),
        .O(\occupancy_reg[3]_0 [7]));
  MUXF7 \status[7]_INST_0_i_1 
       (.I0(\status[7]_INST_0_i_3_n_0 ),
        .I1(\status[7]_INST_0_i_4_n_0 ),
        .O(\status[7]_INST_0_i_1_n_0 ),
        .S(read_pointer_reg[8]));
  MUXF7 \status[7]_INST_0_i_2 
       (.I0(\status[7]_INST_0_i_5_n_0 ),
        .I1(\status[7]_INST_0_i_6_n_0 ),
        .O(\status[7]_INST_0_i_2_n_0 ),
        .S(read_pointer_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_3 
       (.I0(memory_reg_192_255_6_8_n_1),
        .I1(memory_reg_128_191_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_64_127_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_0_63_6_8_n_1),
        .O(\status[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_4 
       (.I0(memory_reg_448_511_6_8_n_1),
        .I1(memory_reg_384_447_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_320_383_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_256_319_6_8_n_1),
        .O(\status[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_5 
       (.I0(memory_reg_704_767_6_8_n_1),
        .I1(memory_reg_640_703_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_576_639_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_512_575_6_8_n_1),
        .O(\status[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \status[7]_INST_0_i_6 
       (.I0(memory_reg_960_1023_6_8_n_1),
        .I1(memory_reg_896_959_6_8_n_1),
        .I2(read_pointer_reg[7]),
        .I3(memory_reg_832_895_6_8_n_1),
        .I4(read_pointer_reg[6]),
        .I5(memory_reg_768_831_6_8_n_1),
        .O(\status[7]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status[8]_INST_0 
       (.I0(\occupancy_reg[3]_0 [9]),
        .I1(head0),
        .O(\occupancy_reg[3]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \status[9]_INST_0 
       (.I0(status[3]),
        .I1(status[2]),
        .I2(status[5]),
        .I3(status[4]),
        .I4(\status[9]_INST_0_i_1_n_0 ),
        .I5(status[10]),
        .O(\occupancy_reg[3]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \status[9]_INST_0_i_1 
       (.I0(status[8]),
        .I1(status[9]),
        .I2(status[6]),
        .I3(status[7]),
        .I4(status[1]),
        .I5(status[0]),
        .O(\status[9]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer_reg[1]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_1 
       (.I0(write_pointer_reg[2]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[1]),
        .I3(write_pointer_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[6]_i_1 
       (.I0(\write_pointer[9]_i_4_n_0 ),
        .I1(write_pointer_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[7]_i_1 
       (.I0(write_pointer_reg[6]),
        .I1(\write_pointer[9]_i_4_n_0 ),
        .I2(write_pointer_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[8]_i_1 
       (.I0(\write_pointer[9]_i_4_n_0 ),
        .I1(write_pointer_reg[6]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[8]),
        .O(p_0_in__0[8]));
  LUT4 #(
    .INIT(16'hDDD0)) 
    \write_pointer[9]_i_1 
       (.I0(\occupancy[10]_i_5_n_0 ),
        .I1(\write_pointer[9]_i_3_n_0 ),
        .I2(framing_error_in),
        .I3(valid_in),
        .O(push_accepted));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[9]_i_2 
       (.I0(\write_pointer[9]_i_4_n_0 ),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[6]),
        .I4(write_pointer_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \write_pointer[9]_i_3 
       (.I0(status[3]),
        .I1(status[2]),
        .I2(status[5]),
        .I3(status[4]),
        .I4(\status[9]_INST_0_i_1_n_0 ),
        .I5(status[10]),
        .O(\write_pointer[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_pointer[9]_i_4 
       (.I0(write_pointer_reg[4]),
        .I1(write_pointer_reg[2]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[1]),
        .I4(write_pointer_reg[3]),
        .I5(write_pointer_reg[5]),
        .O(\write_pointer[9]_i_4_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[0]),
        .Q(write_pointer_reg[0]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[1] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[1]),
        .Q(write_pointer_reg[1]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[2] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[2]),
        .Q(write_pointer_reg[2]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[3] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[3]),
        .Q(write_pointer_reg[3]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[4] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[4]),
        .Q(write_pointer_reg[4]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[5] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[5]),
        .Q(write_pointer_reg[5]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[6] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[6]),
        .Q(write_pointer_reg[6]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[7] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[7]),
        .Q(write_pointer_reg[7]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[8] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[8]),
        .Q(write_pointer_reg[8]),
        .R(occupancy_0));
  FDRE \write_pointer_reg[9] 
       (.C(clk),
        .CE(push_accepted),
        .D(p_0_in__0[9]),
        .Q(write_pointer_reg[9]),
        .R(occupancy_0));
endmodule

(* CHECK_LICENSE_TYPE = "uart_system_uart_event_fifo_0_0,uart_event_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_event_fifo,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    data_in,
    valid_in,
    framing_error_in,
    command,
    status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [7:0]data_in;
  input valid_in;
  input framing_error_in;
  input [31:0]command;
  output [31:0]status;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [31:0]command;
  wire [7:0]data_in;
  wire framing_error_in;
  wire rst;
  wire [23:0]\^status ;
  wire valid_in;

  assign status[31] = \<const1> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const1> ;
  assign status[28] = \<const0> ;
  assign status[27] = \<const0> ;
  assign status[26] = \<const1> ;
  assign status[25] = \<const0> ;
  assign status[24] = \<const1> ;
  assign status[23:0] = \^status [23:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_event_fifo inst
       (.clk(clk),
        .command(command[2:0]),
        .data_in(data_in),
        .framing_error_in(framing_error_in),
        .\occupancy_reg[3]_0 (\^status [12:0]),
        .rst(rst),
        .status(\^status [23:13]),
        .valid_in(valid_in));
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
