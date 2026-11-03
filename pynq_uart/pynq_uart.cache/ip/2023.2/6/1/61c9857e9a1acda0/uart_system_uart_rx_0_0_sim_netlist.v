// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Oct 28 08:52:24 2026
// Host        : cici-legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_system_uart_rx_0_0_sim_netlist.v
// Design      : uart_system_uart_rx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (data_out,
    valid,
    framing_error,
    rst,
    clk,
    rx);
  output [7:0]data_out;
  output valid;
  output framing_error;
  input rst;
  input clk;
  input rx;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_inv_i_1_n_0 ;
  wire \bit_index[0]_i_1_n_0 ;
  wire \bit_index[0]_i_2_n_0 ;
  wire \bit_index[1]_i_1_n_0 ;
  wire \bit_index[1]_i_2_n_0 ;
  wire \bit_index[2]_i_1_n_0 ;
  wire \bit_index[2]_i_2_n_0 ;
  wire \bit_index[2]_i_3_n_0 ;
  wire \bit_index[2]_i_4_n_0 ;
  wire \bit_index[2]_i_5_n_0 ;
  wire \bit_index[2]_i_6_n_0 ;
  wire \bit_index[2]_i_7_n_0 ;
  wire \bit_index_reg_n_0_[0] ;
  wire \bit_index_reg_n_0_[1] ;
  wire \bit_index_reg_n_0_[2] ;
  wire clk;
  wire [9:0]count;
  wire \count[1]_i_2_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[9]_i_2_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire \count[9]_i_4_n_0 ;
  wire \count[9]_i_5_n_0 ;
  wire count_0;
  wire \count_reg_n_0_[0] ;
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
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_shift[0]_i_1_n_0 ;
  wire \data_shift[1]_i_1_n_0 ;
  wire \data_shift[2]_i_1_n_0 ;
  wire \data_shift[3]_i_1_n_0 ;
  wire \data_shift[4]_i_1_n_0 ;
  wire \data_shift[5]_i_1_n_0 ;
  wire \data_shift[6]_i_1_n_0 ;
  wire \data_shift[7]_i_1_n_0 ;
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
  wire rst;
  wire rx;
  wire rx_meta;
  wire rx_sync;
  wire [1:0]state__0;
  wire valid;

  LUT6 #(
    .INIT(64'h5A1A00005A1F5050)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(count_0),
        .I5(rx_sync),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F0000005FE05500)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(count_0),
        .I5(rx_sync),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AE00)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[0]),
        .I1(\bit_index_reg_n_0_[2] ),
        .I2(\bit_index[2]_i_5_n_0 ),
        .I3(\data_out[7]_i_3_n_0 ),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[9] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF7FAA)) 
    \FSM_sequential_state[2]_inv_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(count_0),
        .I4(rx_sync),
        .O(\FSM_sequential_state[2]_inv_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000" *) 
  (* inverted = "yes" *) 
  FDSE \FSM_sequential_state_reg[2]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_inv_i_1_n_0 ),
        .Q(count_0),
        .S(rst));
  LUT6 #(
    .INIT(64'hCFCCCFCFE0EEE0E0)) 
    \bit_index[0]_i_1 
       (.I0(\bit_index[2]_i_3_n_0 ),
        .I1(\bit_index[2]_i_2_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\bit_index[0]_i_2_n_0 ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\bit_index_reg_n_0_[0] ),
        .O(\bit_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \bit_index[0]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .O(\bit_index[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABBBB8888)) 
    \bit_index[1]_i_1 
       (.I0(\bit_index[1]_i_2_n_0 ),
        .I1(\bit_index[2]_i_4_n_0 ),
        .I2(\bit_index_reg_n_0_[2] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .I4(\bit_index_reg_n_0_[1] ),
        .I5(\bit_index[2]_i_6_n_0 ),
        .O(\bit_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20E0E020)) 
    \bit_index[1]_i_2 
       (.I0(rx_sync),
        .I1(state__0[1]),
        .I2(count_0),
        .I3(\bit_index_reg_n_0_[1] ),
        .I4(\bit_index_reg_n_0_[0] ),
        .O(\bit_index[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAFEEEFA0AFE0)) 
    \bit_index[2]_i_1 
       (.I0(\bit_index[2]_i_2_n_0 ),
        .I1(\bit_index[2]_i_3_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\bit_index[2]_i_5_n_0 ),
        .I5(\bit_index[2]_i_6_n_0 ),
        .O(\bit_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \bit_index[2]_i_2 
       (.I0(count_0),
        .I1(state__0[1]),
        .I2(rx_sync),
        .O(\bit_index[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bit_index[2]_i_3 
       (.I0(state__0[1]),
        .I1(count_0),
        .O(\bit_index[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \bit_index[2]_i_4 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\bit_index[2]_i_7_n_0 ),
        .I2(count_0),
        .I3(state__0[1]),
        .I4(rx_sync),
        .I5(state__0[0]),
        .O(\bit_index[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bit_index[2]_i_5 
       (.I0(\bit_index_reg_n_0_[1] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .O(\bit_index[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \bit_index[2]_i_6 
       (.I0(\data_out[7]_i_4_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(state__0[0]),
        .O(\bit_index[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \bit_index[2]_i_7 
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .O(\bit_index[2]_i_7_n_0 ));
  FDRE \bit_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[0]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[0] ),
        .R(rst));
  FDRE \bit_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[1]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[1] ),
        .R(rst));
  FDRE \bit_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[2]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[2] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000FFF20000F2F2)) 
    \count[0]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[0]));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[1]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[1]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[2]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[2]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_2 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[3]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[3]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .O(\count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[4]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[4]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[4] ),
        .O(\count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[5]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[5]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[6]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[6]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[6]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \count[6]_i_2 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count[6]_i_3_n_0 ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[6] ),
        .O(\count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[7]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[7]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[7]));
  LUT3 #(
    .INIT(8'hB4)) 
    \count[7]_i_2 
       (.I0(\count[9]_i_5_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count_reg_n_0_[7] ),
        .O(\count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF20000F2F20000)) 
    \count[8]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[8]_i_2_n_0 ),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \count[8]_i_2 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count[9]_i_5_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .O(\count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F2220000)) 
    \count[9]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\count[9]_i_3_n_0 ),
        .I5(\count[9]_i_4_n_0 ),
        .O(count[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \count[9]_i_2 
       (.I0(count_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(\count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB4F0F0F0)) 
    \count[9]_i_3 
       (.I0(\count[9]_i_5_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .O(\count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h88088888)) 
    \count[9]_i_4 
       (.I0(count_0),
        .I1(state__0[1]),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .O(\count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[9]_i_5 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\count[9]_i_5_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(count_0),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(rst));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(count_0),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(rst));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(count_0),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(rst));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(count_0),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(rst));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(count_0),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(rst));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(count_0),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(rst));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(count_0),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(rst));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(count_0),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(rst));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(count_0),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(rst));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(count_0),
        .D(count[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(rst));
  LUT4 #(
    .INIT(16'h0800)) 
    \data_out[7]_i_1 
       (.I0(rx_sync),
        .I1(state__0[0]),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(\data_out[7]_i_3_n_0 ),
        .O(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \data_out[7]_i_2 
       (.I0(\data_out[7]_i_4_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \data_out[7]_i_3 
       (.I0(count_0),
        .I1(state__0[1]),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFBFBFBFFFB)) 
    \data_out[7]_i_4 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(\count_reg_n_0_[7] ),
        .O(\data_out[7]_i_4_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[0] ),
        .Q(data_out[0]),
        .R(rst));
  FDRE \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[1] ),
        .Q(data_out[1]),
        .R(rst));
  FDRE \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[2] ),
        .Q(data_out[2]),
        .R(rst));
  FDRE \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[3] ),
        .Q(data_out[3]),
        .R(rst));
  FDRE \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[4] ),
        .Q(data_out[4]),
        .R(rst));
  FDRE \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[5] ),
        .Q(data_out[5]),
        .R(rst));
  FDRE \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[6] ),
        .Q(data_out[6]),
        .R(rst));
  FDRE \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(\data_shift_reg_n_0_[7] ),
        .Q(data_out[7]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \data_shift[0]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[2] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[1] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[0] ),
        .O(\data_shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \data_shift[1]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[2] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[1] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[1] ),
        .O(\data_shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \data_shift[2]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[2] ),
        .O(\data_shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \data_shift[3]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[2] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[3] ),
        .O(\data_shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \data_shift[4]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[2] ),
        .I3(\bit_index_reg_n_0_[1] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[4] ),
        .O(\data_shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \data_shift[5]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[2] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[1] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[5] ),
        .O(\data_shift[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \data_shift[6]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[6] ),
        .O(\data_shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \data_shift[7]_i_1 
       (.I0(rx_sync),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\bit_index[2]_i_6_n_0 ),
        .I5(\data_shift_reg_n_0_[7] ),
        .O(\data_shift[7]_i_1_n_0 ));
  FDRE \data_shift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[0]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[0] ),
        .R(rst));
  FDRE \data_shift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[1]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[1] ),
        .R(rst));
  FDRE \data_shift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[2]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[2] ),
        .R(rst));
  FDRE \data_shift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[3]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[3] ),
        .R(rst));
  FDRE \data_shift_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[4]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[4] ),
        .R(rst));
  FDRE \data_shift_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[5]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[5] ),
        .R(rst));
  FDRE \data_shift_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[6]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[6] ),
        .R(rst));
  FDRE \data_shift_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_shift[7]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[7] ),
        .R(rst));
  LUT4 #(
    .INIT(16'h0400)) 
    framing_error_i_1
       (.I0(rx_sync),
        .I1(state__0[0]),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(\data_out[7]_i_3_n_0 ),
        .O(framing_error_i_1_n_0));
  FDRE framing_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(framing_error_i_1_n_0),
        .Q(framing_error),
        .R(rst));
  FDSE rx_meta_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .Q(rx_meta),
        .S(rst));
  FDSE rx_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_meta),
        .Q(rx_sync),
        .S(rst));
  FDRE valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(valid),
        .R(rst));
endmodule

(* CHECK_LICENSE_TYPE = "uart_system_uart_rx_0_0,uart_rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_rx,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    rx,
    data_out,
    valid,
    framing_error);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input rx;
  output [7:0]data_out;
  output valid;
  output framing_error;

  wire clk;
  wire [7:0]data_out;
  wire framing_error;
  wire rst;
  wire rx;
  wire valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx inst
       (.clk(clk),
        .data_out(data_out),
        .framing_error(framing_error),
        .rst(rst),
        .rx(rx),
        .valid(valid));
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
