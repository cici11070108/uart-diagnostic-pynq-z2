-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Oct 29 20:35:49 2026
-- Host        : cici-legion running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cici/Desktop/FPGA/pynq_uart/pynq_uart.gen/sources_1/bd/uart_system/ip/uart_system_uart_diag_baud_core_0_0/uart_system_uart_diag_baud_core_0_0_sim_netlist.vhdl
-- Design      : uart_system_uart_diag_baud_core_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_system_uart_diag_baud_core_0_0_uart_baud_event_fifo is
  port (
    ack_toggle_reg_0 : out STD_LOGIC;
    \occupancy_reg[3]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    command_2_sp_1 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \baud_code_reg[0]_0\ : out STD_LOGIC;
    \baud_code_reg[1]_0\ : out STD_LOGIC;
    rst_0 : out STD_LOGIC;
    \baud_code_reg[1]_1\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \baud_code_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    state10_in : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \i__carry_i_5__0_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    command : in STD_LOGIC_VECTOR ( 5 downto 0 );
    valid : in STD_LOGIC;
    framing_error : in STD_LOGIC;
    \occupancy_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state1_inferred__0/i__carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_system_uart_diag_baud_core_0_0_uart_baud_event_fifo : entity is "uart_baud_event_fifo";
end uart_system_uart_diag_baud_core_0_0_uart_baud_event_fifo;

architecture STRUCTURE of uart_system_uart_diag_baud_core_0_0_uart_baud_event_fifo is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^ack_toggle_reg_0\ : STD_LOGIC;
  signal \baud_code[0]_i_1_n_0\ : STD_LOGIC;
  signal \baud_code[1]_i_1_n_0\ : STD_LOGIC;
  signal \baud_code[2]_i_1_n_0\ : STD_LOGIC;
  signal \^baud_code_reg[0]_0\ : STD_LOGIC;
  signal \^baud_code_reg[1]_0\ : STD_LOGIC;
  signal \^baud_code_reg[2]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal baud_requested : STD_LOGIC;
  signal clocks_per_bit : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal command_2_sn_1 : STD_LOGIC;
  signal head0 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_14__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_16__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_19__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_19_n_0\ : STD_LOGIC;
  signal \i__carry_i_20__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_20_n_0\ : STD_LOGIC;
  signal \i__carry_i_21__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_21_n_0\ : STD_LOGIC;
  signal \i__carry_i_22__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_22_n_0\ : STD_LOGIC;
  signal \^i__carry_i_5__0_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_2\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_3\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_1\ : STD_LOGIC;
  signal \i__carry_i_5_n_2\ : STD_LOGIC;
  signal \i__carry_i_5_n_3\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_2\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_3\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_1\ : STD_LOGIC;
  signal \i__carry_i_6_n_2\ : STD_LOGIC;
  signal \i__carry_i_6_n_3\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_2\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_3\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_1\ : STD_LOGIC;
  signal \i__carry_i_7_n_2\ : STD_LOGIC;
  signal \i__carry_i_7_n_3\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_4_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_5_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_6_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal memory_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal memory_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal memory_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal memory_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal memory_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal memory_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal memory_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal memory_reg_128_191_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal memory_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal memory_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal memory_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal memory_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal memory_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal memory_reg_128_191_6_8_n_0 : STD_LOGIC;
  signal memory_reg_128_191_6_8_n_1 : STD_LOGIC;
  signal memory_reg_128_191_6_8_n_2 : STD_LOGIC;
  signal memory_reg_192_255_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal memory_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal memory_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal memory_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal memory_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal memory_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal memory_reg_192_255_6_8_n_0 : STD_LOGIC;
  signal memory_reg_192_255_6_8_n_1 : STD_LOGIC;
  signal memory_reg_192_255_6_8_n_2 : STD_LOGIC;
  signal memory_reg_256_319_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal memory_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal memory_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal memory_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal memory_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal memory_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal memory_reg_256_319_6_8_n_0 : STD_LOGIC;
  signal memory_reg_256_319_6_8_n_1 : STD_LOGIC;
  signal memory_reg_256_319_6_8_n_2 : STD_LOGIC;
  signal memory_reg_320_383_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_320_383_0_2_n_0 : STD_LOGIC;
  signal memory_reg_320_383_0_2_n_1 : STD_LOGIC;
  signal memory_reg_320_383_0_2_n_2 : STD_LOGIC;
  signal memory_reg_320_383_3_5_n_0 : STD_LOGIC;
  signal memory_reg_320_383_3_5_n_1 : STD_LOGIC;
  signal memory_reg_320_383_3_5_n_2 : STD_LOGIC;
  signal memory_reg_320_383_6_8_n_0 : STD_LOGIC;
  signal memory_reg_320_383_6_8_n_1 : STD_LOGIC;
  signal memory_reg_320_383_6_8_n_2 : STD_LOGIC;
  signal memory_reg_384_447_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_384_447_0_2_n_0 : STD_LOGIC;
  signal memory_reg_384_447_0_2_n_1 : STD_LOGIC;
  signal memory_reg_384_447_0_2_n_2 : STD_LOGIC;
  signal memory_reg_384_447_3_5_n_0 : STD_LOGIC;
  signal memory_reg_384_447_3_5_n_1 : STD_LOGIC;
  signal memory_reg_384_447_3_5_n_2 : STD_LOGIC;
  signal memory_reg_384_447_6_8_n_0 : STD_LOGIC;
  signal memory_reg_384_447_6_8_n_1 : STD_LOGIC;
  signal memory_reg_384_447_6_8_n_2 : STD_LOGIC;
  signal memory_reg_448_511_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_448_511_0_2_n_0 : STD_LOGIC;
  signal memory_reg_448_511_0_2_n_1 : STD_LOGIC;
  signal memory_reg_448_511_0_2_n_2 : STD_LOGIC;
  signal memory_reg_448_511_3_5_n_0 : STD_LOGIC;
  signal memory_reg_448_511_3_5_n_1 : STD_LOGIC;
  signal memory_reg_448_511_3_5_n_2 : STD_LOGIC;
  signal memory_reg_448_511_6_8_n_0 : STD_LOGIC;
  signal memory_reg_448_511_6_8_n_1 : STD_LOGIC;
  signal memory_reg_448_511_6_8_n_2 : STD_LOGIC;
  signal memory_reg_512_575_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_512_575_0_2_n_0 : STD_LOGIC;
  signal memory_reg_512_575_0_2_n_1 : STD_LOGIC;
  signal memory_reg_512_575_0_2_n_2 : STD_LOGIC;
  signal memory_reg_512_575_3_5_n_0 : STD_LOGIC;
  signal memory_reg_512_575_3_5_n_1 : STD_LOGIC;
  signal memory_reg_512_575_3_5_n_2 : STD_LOGIC;
  signal memory_reg_512_575_6_8_n_0 : STD_LOGIC;
  signal memory_reg_512_575_6_8_n_1 : STD_LOGIC;
  signal memory_reg_512_575_6_8_n_2 : STD_LOGIC;
  signal memory_reg_576_639_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_576_639_0_2_n_0 : STD_LOGIC;
  signal memory_reg_576_639_0_2_n_1 : STD_LOGIC;
  signal memory_reg_576_639_0_2_n_2 : STD_LOGIC;
  signal memory_reg_576_639_3_5_n_0 : STD_LOGIC;
  signal memory_reg_576_639_3_5_n_1 : STD_LOGIC;
  signal memory_reg_576_639_3_5_n_2 : STD_LOGIC;
  signal memory_reg_576_639_6_8_n_0 : STD_LOGIC;
  signal memory_reg_576_639_6_8_n_1 : STD_LOGIC;
  signal memory_reg_576_639_6_8_n_2 : STD_LOGIC;
  signal memory_reg_640_703_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_640_703_0_2_n_0 : STD_LOGIC;
  signal memory_reg_640_703_0_2_n_1 : STD_LOGIC;
  signal memory_reg_640_703_0_2_n_2 : STD_LOGIC;
  signal memory_reg_640_703_3_5_n_0 : STD_LOGIC;
  signal memory_reg_640_703_3_5_n_1 : STD_LOGIC;
  signal memory_reg_640_703_3_5_n_2 : STD_LOGIC;
  signal memory_reg_640_703_6_8_n_0 : STD_LOGIC;
  signal memory_reg_640_703_6_8_n_1 : STD_LOGIC;
  signal memory_reg_640_703_6_8_n_2 : STD_LOGIC;
  signal memory_reg_64_127_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal memory_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal memory_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal memory_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal memory_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal memory_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal memory_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal memory_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal memory_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal memory_reg_704_767_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_704_767_0_2_n_0 : STD_LOGIC;
  signal memory_reg_704_767_0_2_n_1 : STD_LOGIC;
  signal memory_reg_704_767_0_2_n_2 : STD_LOGIC;
  signal memory_reg_704_767_3_5_n_0 : STD_LOGIC;
  signal memory_reg_704_767_3_5_n_1 : STD_LOGIC;
  signal memory_reg_704_767_3_5_n_2 : STD_LOGIC;
  signal memory_reg_704_767_6_8_n_0 : STD_LOGIC;
  signal memory_reg_704_767_6_8_n_1 : STD_LOGIC;
  signal memory_reg_704_767_6_8_n_2 : STD_LOGIC;
  signal memory_reg_768_831_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_768_831_0_2_n_0 : STD_LOGIC;
  signal memory_reg_768_831_0_2_n_1 : STD_LOGIC;
  signal memory_reg_768_831_0_2_n_2 : STD_LOGIC;
  signal memory_reg_768_831_3_5_n_0 : STD_LOGIC;
  signal memory_reg_768_831_3_5_n_1 : STD_LOGIC;
  signal memory_reg_768_831_3_5_n_2 : STD_LOGIC;
  signal memory_reg_768_831_6_8_n_0 : STD_LOGIC;
  signal memory_reg_768_831_6_8_n_1 : STD_LOGIC;
  signal memory_reg_768_831_6_8_n_2 : STD_LOGIC;
  signal memory_reg_832_895_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_832_895_0_2_n_0 : STD_LOGIC;
  signal memory_reg_832_895_0_2_n_1 : STD_LOGIC;
  signal memory_reg_832_895_0_2_n_2 : STD_LOGIC;
  signal memory_reg_832_895_3_5_n_0 : STD_LOGIC;
  signal memory_reg_832_895_3_5_n_1 : STD_LOGIC;
  signal memory_reg_832_895_3_5_n_2 : STD_LOGIC;
  signal memory_reg_832_895_6_8_n_0 : STD_LOGIC;
  signal memory_reg_832_895_6_8_n_1 : STD_LOGIC;
  signal memory_reg_832_895_6_8_n_2 : STD_LOGIC;
  signal memory_reg_896_959_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_896_959_0_2_n_0 : STD_LOGIC;
  signal memory_reg_896_959_0_2_n_1 : STD_LOGIC;
  signal memory_reg_896_959_0_2_n_2 : STD_LOGIC;
  signal memory_reg_896_959_3_5_n_0 : STD_LOGIC;
  signal memory_reg_896_959_3_5_n_1 : STD_LOGIC;
  signal memory_reg_896_959_3_5_n_2 : STD_LOGIC;
  signal memory_reg_896_959_6_8_n_0 : STD_LOGIC;
  signal memory_reg_896_959_6_8_n_1 : STD_LOGIC;
  signal memory_reg_896_959_6_8_n_2 : STD_LOGIC;
  signal memory_reg_960_1023_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_960_1023_0_2_n_0 : STD_LOGIC;
  signal memory_reg_960_1023_0_2_n_1 : STD_LOGIC;
  signal memory_reg_960_1023_0_2_n_2 : STD_LOGIC;
  signal memory_reg_960_1023_3_5_n_0 : STD_LOGIC;
  signal memory_reg_960_1023_3_5_n_1 : STD_LOGIC;
  signal memory_reg_960_1023_3_5_n_2 : STD_LOGIC;
  signal memory_reg_960_1023_6_8_n_0 : STD_LOGIC;
  signal memory_reg_960_1023_6_8_n_1 : STD_LOGIC;
  signal memory_reg_960_1023_6_8_n_2 : STD_LOGIC;
  signal new_command : STD_LOGIC;
  signal occupancy : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \occupancy[10]_i_2_n_0\ : STD_LOGIC;
  signal \occupancy[10]_i_6_n_0\ : STD_LOGIC;
  signal \occupancy[10]_i_7_n_0\ : STD_LOGIC;
  signal \occupancy[10]_i_8_n_0\ : STD_LOGIC;
  signal \occupancy[4]_i_3_n_0\ : STD_LOGIC;
  signal \occupancy[4]_i_4_n_0\ : STD_LOGIC;
  signal \occupancy[4]_i_5_n_0\ : STD_LOGIC;
  signal \occupancy[4]_i_6_n_0\ : STD_LOGIC;
  signal \occupancy[8]_i_2_n_0\ : STD_LOGIC;
  signal \occupancy[8]_i_3_n_0\ : STD_LOGIC;
  signal \occupancy[8]_i_4_n_0\ : STD_LOGIC;
  signal \occupancy[8]_i_5_n_0\ : STD_LOGIC;
  signal occupancy_0 : STD_LOGIC;
  signal \occupancy_reg[10]_i_3_n_3\ : STD_LOGIC;
  signal \^occupancy_reg[3]_0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \occupancy_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \occupancy_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \occupancy_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \occupancy_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \occupancy_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \occupancy_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \occupancy_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \occupancy_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal overflow_i_1_n_0 : STD_LOGIC;
  signal overflow_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pop_accepted : STD_LOGIC;
  signal \read_pointer[9]_i_3_n_0\ : STD_LOGIC;
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^rst_0\ : STD_LOGIC;
  signal rx_flush : STD_LOGIC;
  signal state2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \status[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \status[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_3_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_i__carry__0_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i__carry__0_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i__carry__0_i_3__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i__carry__0_i_3__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_256_319_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_320_383_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_320_383_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_320_383_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_384_447_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_384_447_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_384_447_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_448_511_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_448_511_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_448_511_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_512_575_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_512_575_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_512_575_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_576_639_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_576_639_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_576_639_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_640_703_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_640_703_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_640_703_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_704_767_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_704_767_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_704_767_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_768_831_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_768_831_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_768_831_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_832_895_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_832_895_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_832_895_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_896_959_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_896_959_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_896_959_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_960_1023_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_960_1023_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_960_1023_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal \NLW_occupancy_reg[10]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_occupancy_reg[10]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \baud_code[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \baud_code[1]_i_1\ : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg_0_63_0_2 : label is 9216;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg_0_63_0_2 : label is "inst/event_fifo/memory_reg_0_63_0_2";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of memory_reg_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg_0_63_0_2 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of memory_reg_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg_0_63_0_2 : label is 2;
  attribute SOFT_HLUTNM of memory_reg_0_63_0_2_i_6 : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_0_63_3_5 : label is "inst/event_fifo/memory_reg_0_63_3_5";
  attribute RTL_RAM_TYPE of memory_reg_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_3_5 : label is 63;
  attribute ram_offset of memory_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_0_63_6_8 : label is "inst/event_fifo/memory_reg_0_63_6_8";
  attribute RTL_RAM_TYPE of memory_reg_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_6_8 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_6_8 : label is 63;
  attribute ram_offset of memory_reg_0_63_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_128_191_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_128_191_0_2 : label is "inst/event_fifo/memory_reg_128_191_0_2";
  attribute RTL_RAM_TYPE of memory_reg_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_128_191_0_2 : label is 128;
  attribute ram_addr_end of memory_reg_128_191_0_2 : label is 191;
  attribute ram_offset of memory_reg_128_191_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_128_191_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_128_191_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_128_191_3_5 : label is "inst/event_fifo/memory_reg_128_191_3_5";
  attribute RTL_RAM_TYPE of memory_reg_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_128_191_3_5 : label is 128;
  attribute ram_addr_end of memory_reg_128_191_3_5 : label is 191;
  attribute ram_offset of memory_reg_128_191_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_128_191_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_128_191_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_128_191_6_8 : label is "inst/event_fifo/memory_reg_128_191_6_8";
  attribute RTL_RAM_TYPE of memory_reg_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_128_191_6_8 : label is 128;
  attribute ram_addr_end of memory_reg_128_191_6_8 : label is 191;
  attribute ram_offset of memory_reg_128_191_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_128_191_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_192_255_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_192_255_0_2 : label is "inst/event_fifo/memory_reg_192_255_0_2";
  attribute RTL_RAM_TYPE of memory_reg_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_192_255_0_2 : label is 192;
  attribute ram_addr_end of memory_reg_192_255_0_2 : label is 255;
  attribute ram_offset of memory_reg_192_255_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_192_255_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_192_255_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_192_255_3_5 : label is "inst/event_fifo/memory_reg_192_255_3_5";
  attribute RTL_RAM_TYPE of memory_reg_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_192_255_3_5 : label is 192;
  attribute ram_addr_end of memory_reg_192_255_3_5 : label is 255;
  attribute ram_offset of memory_reg_192_255_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_192_255_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_192_255_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_192_255_6_8 : label is "inst/event_fifo/memory_reg_192_255_6_8";
  attribute RTL_RAM_TYPE of memory_reg_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_192_255_6_8 : label is 192;
  attribute ram_addr_end of memory_reg_192_255_6_8 : label is 255;
  attribute ram_offset of memory_reg_192_255_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_192_255_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_256_319_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_256_319_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_256_319_0_2 : label is "inst/event_fifo/memory_reg_256_319_0_2";
  attribute RTL_RAM_TYPE of memory_reg_256_319_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_256_319_0_2 : label is 256;
  attribute ram_addr_end of memory_reg_256_319_0_2 : label is 319;
  attribute ram_offset of memory_reg_256_319_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_256_319_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_256_319_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_256_319_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_256_319_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_256_319_3_5 : label is "inst/event_fifo/memory_reg_256_319_3_5";
  attribute RTL_RAM_TYPE of memory_reg_256_319_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_256_319_3_5 : label is 256;
  attribute ram_addr_end of memory_reg_256_319_3_5 : label is 319;
  attribute ram_offset of memory_reg_256_319_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_256_319_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_256_319_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_256_319_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_256_319_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_256_319_6_8 : label is "inst/event_fifo/memory_reg_256_319_6_8";
  attribute RTL_RAM_TYPE of memory_reg_256_319_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_256_319_6_8 : label is 256;
  attribute ram_addr_end of memory_reg_256_319_6_8 : label is 319;
  attribute ram_offset of memory_reg_256_319_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_256_319_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_256_319_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_320_383_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_320_383_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_320_383_0_2 : label is "inst/event_fifo/memory_reg_320_383_0_2";
  attribute RTL_RAM_TYPE of memory_reg_320_383_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_320_383_0_2 : label is 320;
  attribute ram_addr_end of memory_reg_320_383_0_2 : label is 383;
  attribute ram_offset of memory_reg_320_383_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_320_383_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_320_383_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_320_383_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_320_383_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_320_383_3_5 : label is "inst/event_fifo/memory_reg_320_383_3_5";
  attribute RTL_RAM_TYPE of memory_reg_320_383_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_320_383_3_5 : label is 320;
  attribute ram_addr_end of memory_reg_320_383_3_5 : label is 383;
  attribute ram_offset of memory_reg_320_383_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_320_383_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_320_383_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_320_383_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_320_383_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_320_383_6_8 : label is "inst/event_fifo/memory_reg_320_383_6_8";
  attribute RTL_RAM_TYPE of memory_reg_320_383_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_320_383_6_8 : label is 320;
  attribute ram_addr_end of memory_reg_320_383_6_8 : label is 383;
  attribute ram_offset of memory_reg_320_383_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_320_383_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_320_383_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_384_447_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_384_447_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_384_447_0_2 : label is "inst/event_fifo/memory_reg_384_447_0_2";
  attribute RTL_RAM_TYPE of memory_reg_384_447_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_384_447_0_2 : label is 384;
  attribute ram_addr_end of memory_reg_384_447_0_2 : label is 447;
  attribute ram_offset of memory_reg_384_447_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_384_447_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_384_447_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_384_447_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_384_447_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_384_447_3_5 : label is "inst/event_fifo/memory_reg_384_447_3_5";
  attribute RTL_RAM_TYPE of memory_reg_384_447_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_384_447_3_5 : label is 384;
  attribute ram_addr_end of memory_reg_384_447_3_5 : label is 447;
  attribute ram_offset of memory_reg_384_447_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_384_447_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_384_447_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_384_447_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_384_447_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_384_447_6_8 : label is "inst/event_fifo/memory_reg_384_447_6_8";
  attribute RTL_RAM_TYPE of memory_reg_384_447_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_384_447_6_8 : label is 384;
  attribute ram_addr_end of memory_reg_384_447_6_8 : label is 447;
  attribute ram_offset of memory_reg_384_447_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_384_447_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_384_447_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_448_511_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_448_511_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_448_511_0_2 : label is "inst/event_fifo/memory_reg_448_511_0_2";
  attribute RTL_RAM_TYPE of memory_reg_448_511_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_448_511_0_2 : label is 448;
  attribute ram_addr_end of memory_reg_448_511_0_2 : label is 511;
  attribute ram_offset of memory_reg_448_511_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_448_511_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_448_511_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_448_511_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_448_511_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_448_511_3_5 : label is "inst/event_fifo/memory_reg_448_511_3_5";
  attribute RTL_RAM_TYPE of memory_reg_448_511_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_448_511_3_5 : label is 448;
  attribute ram_addr_end of memory_reg_448_511_3_5 : label is 511;
  attribute ram_offset of memory_reg_448_511_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_448_511_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_448_511_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_448_511_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_448_511_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_448_511_6_8 : label is "inst/event_fifo/memory_reg_448_511_6_8";
  attribute RTL_RAM_TYPE of memory_reg_448_511_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_448_511_6_8 : label is 448;
  attribute ram_addr_end of memory_reg_448_511_6_8 : label is 511;
  attribute ram_offset of memory_reg_448_511_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_448_511_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_448_511_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_512_575_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_512_575_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_512_575_0_2 : label is "inst/event_fifo/memory_reg_512_575_0_2";
  attribute RTL_RAM_TYPE of memory_reg_512_575_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_512_575_0_2 : label is 512;
  attribute ram_addr_end of memory_reg_512_575_0_2 : label is 575;
  attribute ram_offset of memory_reg_512_575_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_512_575_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_512_575_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_512_575_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_512_575_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_512_575_3_5 : label is "inst/event_fifo/memory_reg_512_575_3_5";
  attribute RTL_RAM_TYPE of memory_reg_512_575_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_512_575_3_5 : label is 512;
  attribute ram_addr_end of memory_reg_512_575_3_5 : label is 575;
  attribute ram_offset of memory_reg_512_575_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_512_575_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_512_575_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_512_575_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_512_575_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_512_575_6_8 : label is "inst/event_fifo/memory_reg_512_575_6_8";
  attribute RTL_RAM_TYPE of memory_reg_512_575_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_512_575_6_8 : label is 512;
  attribute ram_addr_end of memory_reg_512_575_6_8 : label is 575;
  attribute ram_offset of memory_reg_512_575_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_512_575_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_512_575_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_576_639_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_576_639_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_576_639_0_2 : label is "inst/event_fifo/memory_reg_576_639_0_2";
  attribute RTL_RAM_TYPE of memory_reg_576_639_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_576_639_0_2 : label is 576;
  attribute ram_addr_end of memory_reg_576_639_0_2 : label is 639;
  attribute ram_offset of memory_reg_576_639_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_576_639_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_576_639_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_576_639_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_576_639_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_576_639_3_5 : label is "inst/event_fifo/memory_reg_576_639_3_5";
  attribute RTL_RAM_TYPE of memory_reg_576_639_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_576_639_3_5 : label is 576;
  attribute ram_addr_end of memory_reg_576_639_3_5 : label is 639;
  attribute ram_offset of memory_reg_576_639_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_576_639_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_576_639_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_576_639_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_576_639_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_576_639_6_8 : label is "inst/event_fifo/memory_reg_576_639_6_8";
  attribute RTL_RAM_TYPE of memory_reg_576_639_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_576_639_6_8 : label is 576;
  attribute ram_addr_end of memory_reg_576_639_6_8 : label is 639;
  attribute ram_offset of memory_reg_576_639_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_576_639_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_576_639_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_640_703_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_640_703_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_640_703_0_2 : label is "inst/event_fifo/memory_reg_640_703_0_2";
  attribute RTL_RAM_TYPE of memory_reg_640_703_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_640_703_0_2 : label is 640;
  attribute ram_addr_end of memory_reg_640_703_0_2 : label is 703;
  attribute ram_offset of memory_reg_640_703_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_640_703_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_640_703_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_640_703_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_640_703_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_640_703_3_5 : label is "inst/event_fifo/memory_reg_640_703_3_5";
  attribute RTL_RAM_TYPE of memory_reg_640_703_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_640_703_3_5 : label is 640;
  attribute ram_addr_end of memory_reg_640_703_3_5 : label is 703;
  attribute ram_offset of memory_reg_640_703_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_640_703_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_640_703_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_640_703_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_640_703_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_640_703_6_8 : label is "inst/event_fifo/memory_reg_640_703_6_8";
  attribute RTL_RAM_TYPE of memory_reg_640_703_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_640_703_6_8 : label is 640;
  attribute ram_addr_end of memory_reg_640_703_6_8 : label is 703;
  attribute ram_offset of memory_reg_640_703_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_640_703_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_640_703_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_64_127_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_64_127_0_2 : label is "inst/event_fifo/memory_reg_64_127_0_2";
  attribute RTL_RAM_TYPE of memory_reg_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_64_127_0_2 : label is 64;
  attribute ram_addr_end of memory_reg_64_127_0_2 : label is 127;
  attribute ram_offset of memory_reg_64_127_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_64_127_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_64_127_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_64_127_3_5 : label is "inst/event_fifo/memory_reg_64_127_3_5";
  attribute RTL_RAM_TYPE of memory_reg_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_64_127_3_5 : label is 64;
  attribute ram_addr_end of memory_reg_64_127_3_5 : label is 127;
  attribute ram_offset of memory_reg_64_127_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_64_127_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_64_127_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_64_127_6_8 : label is "inst/event_fifo/memory_reg_64_127_6_8";
  attribute RTL_RAM_TYPE of memory_reg_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_64_127_6_8 : label is 64;
  attribute ram_addr_end of memory_reg_64_127_6_8 : label is 127;
  attribute ram_offset of memory_reg_64_127_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_64_127_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_704_767_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_704_767_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_704_767_0_2 : label is "inst/event_fifo/memory_reg_704_767_0_2";
  attribute RTL_RAM_TYPE of memory_reg_704_767_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_704_767_0_2 : label is 704;
  attribute ram_addr_end of memory_reg_704_767_0_2 : label is 767;
  attribute ram_offset of memory_reg_704_767_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_704_767_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_704_767_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_704_767_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_704_767_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_704_767_3_5 : label is "inst/event_fifo/memory_reg_704_767_3_5";
  attribute RTL_RAM_TYPE of memory_reg_704_767_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_704_767_3_5 : label is 704;
  attribute ram_addr_end of memory_reg_704_767_3_5 : label is 767;
  attribute ram_offset of memory_reg_704_767_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_704_767_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_704_767_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_704_767_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_704_767_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_704_767_6_8 : label is "inst/event_fifo/memory_reg_704_767_6_8";
  attribute RTL_RAM_TYPE of memory_reg_704_767_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_704_767_6_8 : label is 704;
  attribute ram_addr_end of memory_reg_704_767_6_8 : label is 767;
  attribute ram_offset of memory_reg_704_767_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_704_767_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_704_767_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_768_831_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_768_831_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_768_831_0_2 : label is "inst/event_fifo/memory_reg_768_831_0_2";
  attribute RTL_RAM_TYPE of memory_reg_768_831_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_768_831_0_2 : label is 768;
  attribute ram_addr_end of memory_reg_768_831_0_2 : label is 831;
  attribute ram_offset of memory_reg_768_831_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_768_831_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_768_831_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_768_831_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_768_831_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_768_831_3_5 : label is "inst/event_fifo/memory_reg_768_831_3_5";
  attribute RTL_RAM_TYPE of memory_reg_768_831_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_768_831_3_5 : label is 768;
  attribute ram_addr_end of memory_reg_768_831_3_5 : label is 831;
  attribute ram_offset of memory_reg_768_831_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_768_831_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_768_831_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_768_831_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_768_831_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_768_831_6_8 : label is "inst/event_fifo/memory_reg_768_831_6_8";
  attribute RTL_RAM_TYPE of memory_reg_768_831_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_768_831_6_8 : label is 768;
  attribute ram_addr_end of memory_reg_768_831_6_8 : label is 831;
  attribute ram_offset of memory_reg_768_831_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_768_831_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_768_831_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_832_895_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_832_895_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_832_895_0_2 : label is "inst/event_fifo/memory_reg_832_895_0_2";
  attribute RTL_RAM_TYPE of memory_reg_832_895_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_832_895_0_2 : label is 832;
  attribute ram_addr_end of memory_reg_832_895_0_2 : label is 895;
  attribute ram_offset of memory_reg_832_895_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_832_895_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_832_895_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_832_895_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_832_895_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_832_895_3_5 : label is "inst/event_fifo/memory_reg_832_895_3_5";
  attribute RTL_RAM_TYPE of memory_reg_832_895_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_832_895_3_5 : label is 832;
  attribute ram_addr_end of memory_reg_832_895_3_5 : label is 895;
  attribute ram_offset of memory_reg_832_895_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_832_895_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_832_895_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_832_895_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_832_895_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_832_895_6_8 : label is "inst/event_fifo/memory_reg_832_895_6_8";
  attribute RTL_RAM_TYPE of memory_reg_832_895_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_832_895_6_8 : label is 832;
  attribute ram_addr_end of memory_reg_832_895_6_8 : label is 895;
  attribute ram_offset of memory_reg_832_895_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_832_895_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_832_895_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_896_959_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_896_959_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_896_959_0_2 : label is "inst/event_fifo/memory_reg_896_959_0_2";
  attribute RTL_RAM_TYPE of memory_reg_896_959_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_896_959_0_2 : label is 896;
  attribute ram_addr_end of memory_reg_896_959_0_2 : label is 959;
  attribute ram_offset of memory_reg_896_959_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_896_959_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_896_959_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_896_959_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_896_959_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_896_959_3_5 : label is "inst/event_fifo/memory_reg_896_959_3_5";
  attribute RTL_RAM_TYPE of memory_reg_896_959_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_896_959_3_5 : label is 896;
  attribute ram_addr_end of memory_reg_896_959_3_5 : label is 959;
  attribute ram_offset of memory_reg_896_959_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_896_959_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_896_959_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_896_959_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_896_959_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_896_959_6_8 : label is "inst/event_fifo/memory_reg_896_959_6_8";
  attribute RTL_RAM_TYPE of memory_reg_896_959_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_896_959_6_8 : label is 896;
  attribute ram_addr_end of memory_reg_896_959_6_8 : label is 959;
  attribute ram_offset of memory_reg_896_959_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_896_959_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_896_959_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_960_1023_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_960_1023_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_960_1023_0_2 : label is "inst/event_fifo/memory_reg_960_1023_0_2";
  attribute RTL_RAM_TYPE of memory_reg_960_1023_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_960_1023_0_2 : label is 960;
  attribute ram_addr_end of memory_reg_960_1023_0_2 : label is 1023;
  attribute ram_offset of memory_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_960_1023_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_960_1023_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_960_1023_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_960_1023_3_5 : label is "inst/event_fifo/memory_reg_960_1023_3_5";
  attribute RTL_RAM_TYPE of memory_reg_960_1023_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_960_1023_3_5 : label is 960;
  attribute ram_addr_end of memory_reg_960_1023_3_5 : label is 1023;
  attribute ram_offset of memory_reg_960_1023_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_960_1023_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_960_1023_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_960_1023_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_960_1023_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_960_1023_6_8 : label is "inst/event_fifo/memory_reg_960_1023_6_8";
  attribute RTL_RAM_TYPE of memory_reg_960_1023_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_960_1023_6_8 : label is 960;
  attribute ram_addr_end of memory_reg_960_1023_6_8 : label is 1023;
  attribute ram_offset of memory_reg_960_1023_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_960_1023_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_960_1023_6_8 : label is 8;
  attribute SOFT_HLUTNM of \occupancy[10]_i_5\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \occupancy_reg[10]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \occupancy_reg[10]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \occupancy_reg[4]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \occupancy_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \occupancy_reg[8]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \occupancy_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_pointer[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_pointer[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_pointer[9]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \status[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \status[8]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_pointer[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_pointer[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_pointer[9]_i_2\ : label is "soft_lutpair0";
begin
  CO(0) <= \^co\(0);
  DI(0) <= \^di\(0);
  Q(10 downto 0) <= \^q\(10 downto 0);
  ack_toggle_reg_0 <= \^ack_toggle_reg_0\;
  \baud_code_reg[0]_0\ <= \^baud_code_reg[0]_0\;
  \baud_code_reg[1]_0\ <= \^baud_code_reg[1]_0\;
  \baud_code_reg[2]_0\(1 downto 0) <= \^baud_code_reg[2]_0\(1 downto 0);
  command_2_sp_1 <= command_2_sn_1;
  \i__carry_i_5__0_0\(0) <= \^i__carry_i_5__0_0\(0);
  \occupancy_reg[3]_0\(11 downto 0) <= \^occupancy_reg[3]_0\(11 downto 0);
  rst_0 <= \^rst_0\;
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => rx_flush,
      O => \^rst_0\
    );
ack_toggle_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => command(0),
      Q => \^ack_toggle_reg_0\,
      R => rst
    );
\baud_code[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => command(3),
      I1 => baud_requested,
      I2 => \^baud_code_reg[0]_0\,
      O => \baud_code[0]_i_1_n_0\
    );
\baud_code[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => command(4),
      I1 => baud_requested,
      I2 => \^baud_code_reg[1]_0\,
      O => \baud_code[1]_i_1_n_0\
    );
\baud_code[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => command(5),
      I1 => baud_requested,
      I2 => \^di\(0),
      O => \baud_code[2]_i_1_n_0\
    );
\baud_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \baud_code[0]_i_1_n_0\,
      Q => \^baud_code_reg[0]_0\,
      R => rst
    );
\baud_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \baud_code[1]_i_1_n_0\,
      Q => \^baud_code_reg[1]_0\,
      R => rst
    );
\baud_code_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \baud_code[2]_i_1_n_0\,
      Q => \^di\(0),
      S => rst
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i__carry_i_5__0_0\(0),
      I1 => \state1_inferred__0/i__carry__0\(0),
      O => S(0)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^co\(0),
      I1 => \state1_inferred__0/i__carry__0\(0),
      O => \count_reg[15]\(0)
    );
\i__carry__0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_5_n_0\,
      CO(3 downto 2) => \NLW_i__carry__0_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^co\(0),
      CO(0) => \NLW_i__carry__0_i_3_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 1) => \NLW_i__carry__0_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \baud_code_reg[1]_1\(12),
      S(3 downto 1) => B"001",
      S(0) => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_5__0_n_0\,
      CO(3 downto 1) => \NLW_i__carry__0_i_3__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^i__carry_i_5__0_0\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i__carry__0_i_3__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^di\(0),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^di\(0),
      O => state2(0)
    );
\i__carry_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^di\(0),
      O => \i__carry_i_10__0_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^baud_code_reg[0]_0\,
      I1 => \^di\(0),
      I2 => \^baud_code_reg[1]_0\,
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^baud_code_reg[0]_0\,
      I1 => \^di\(0),
      I2 => \^baud_code_reg[1]_0\,
      O => \i__carry_i_11__0_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_12__0_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      O => clocks_per_bit(5)
    );
\i__carry_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_13__0_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^di\(0),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^baud_code_reg[1]_0\,
      O => \i__carry_i_14__0_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^baud_code_reg[1]_0\,
      O => clocks_per_bit(4)
    );
\i__carry_i_15__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(0),
      O => \i__carry_i_15__0_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(0),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9E"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[1]_0\,
      I2 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_16__0_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9E"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[1]_0\,
      I2 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^di\(0),
      I2 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_17__0_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^baud_code_reg[0]_0\,
      I1 => \^di\(0),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^di\(0),
      I2 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_18__0_n_0\
    );
\i__carry_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^di\(0),
      O => \i__carry_i_19_n_0\
    );
\i__carry_i_19__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^baud_code_reg[0]_0\,
      I1 => \^di\(0),
      O => \i__carry_i_19__0_n_0\
    );
\i__carry_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^di\(0),
      O => \i__carry_i_20_n_0\
    );
\i__carry_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^baud_code_reg[1]_0\,
      O => \i__carry_i_20__0_n_0\
    );
\i__carry_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^baud_code_reg[1]_0\,
      O => \i__carry_i_21_n_0\
    );
\i__carry_i_21__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[1]_0\,
      I2 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_21__0_n_0\
    );
\i__carry_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^baud_code_reg[1]_0\,
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^di\(0),
      O => \i__carry_i_22_n_0\
    );
\i__carry_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[1]_0\,
      I2 => \^baud_code_reg[0]_0\,
      O => \i__carry_i_22__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_6_n_0\,
      CO(3) => \i__carry_i_5_n_0\,
      CO(2) => \i__carry_i_5_n_1\,
      CO(1) => \i__carry_i_5_n_2\,
      CO(0) => \i__carry_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"11",
      DI(1) => \i__carry_i_9__0_n_0\,
      DI(0) => \i__carry_i_10__0_n_0\,
      O(3 downto 0) => \baud_code_reg[1]_1\(11 downto 8),
      S(3) => \i__carry_i_11__0_n_0\,
      S(2) => \i__carry_i_12__0_n_0\,
      S(1) => \i__carry_i_13__0_n_0\,
      S(0) => \i__carry_i_14__0_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_6__0_n_0\,
      CO(3) => \i__carry_i_5__0_n_0\,
      CO(2) => \i__carry_i_5__0_n_1\,
      CO(1) => \i__carry_i_5__0_n_2\,
      CO(0) => \i__carry_i_5__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"111",
      DI(0) => \i__carry_i_9_n_0\,
      O(3 downto 0) => state10_in(11 downto 8),
      S(3) => state2(0),
      S(2) => \i__carry_i_11_n_0\,
      S(1) => \i__carry_i_12_n_0\,
      S(0) => clocks_per_bit(5)
    );
\i__carry_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_7_n_0\,
      CO(3) => \i__carry_i_6_n_0\,
      CO(2) => \i__carry_i_6_n_1\,
      CO(1) => \i__carry_i_6_n_2\,
      CO(0) => \i__carry_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \^di\(0),
      DI(2 downto 0) => B"111",
      O(3 downto 0) => \baud_code_reg[1]_1\(7 downto 4),
      S(3) => \i__carry_i_15__0_n_0\,
      S(2) => \i__carry_i_16__0_n_0\,
      S(1) => \i__carry_i_17__0_n_0\,
      S(0) => \i__carry_i_18_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_7__0_n_0\,
      CO(3) => \i__carry_i_6__0_n_0\,
      CO(2) => \i__carry_i_6__0_n_1\,
      CO(1) => \i__carry_i_6__0_n_2\,
      CO(0) => \i__carry_i_6__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_14_n_0\,
      DI(2) => \^di\(0),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => state10_in(7 downto 4),
      S(3) => clocks_per_bit(4),
      S(2) => \i__carry_i_16_n_0\,
      S(1) => \i__carry_i_17_n_0\,
      S(0) => \i__carry_i_18__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_7_n_0\,
      CO(2) => \i__carry_i_7_n_1\,
      CO(1) => \i__carry_i_7_n_2\,
      CO(0) => \i__carry_i_7_n_3\,
      CYINIT => \^baud_code_reg[2]_0\(0),
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \baud_code_reg[1]_1\(3 downto 0),
      S(3) => \i__carry_i_19_n_0\,
      S(2) => \i__carry_i_20__0_n_0\,
      S(1) => \i__carry_i_21__0_n_0\,
      S(0) => \i__carry_i_22_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_7__0_n_0\,
      CO(2) => \i__carry_i_7__0_n_1\,
      CO(1) => \i__carry_i_7__0_n_2\,
      CO(0) => \i__carry_i_7__0_n_3\,
      CYINIT => \^baud_code_reg[2]_0\(1),
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => state10_in(3 downto 0),
      S(3) => \i__carry_i_19__0_n_0\,
      S(2) => \i__carry_i_20_n_0\,
      S(1) => \i__carry_i_21_n_0\,
      S(0) => \i__carry_i_22__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^baud_code_reg[1]_0\,
      O => \^baud_code_reg[2]_0\(0)
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^baud_code_reg[0]_0\,
      I2 => \^baud_code_reg[1]_0\,
      O => \^baud_code_reg[2]_0\(1)
    );
\i__carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^baud_code_reg[0]_0\,
      I1 => \^di\(0),
      O => \i__carry_i_9_n_0\
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^baud_code_reg[0]_0\,
      I1 => \^di\(0),
      O => \i__carry_i_9__0_n_0\
    );
memory_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_0_63_0_2_n_0,
      DOB => memory_reg_0_63_0_2_n_1,
      DOC => memory_reg_0_63_0_2_n_2,
      DOD => NLW_memory_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_0_63_0_2_i_4_n_0
    );
memory_reg_0_63_0_2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => memory_reg_0_63_0_2_i_5_n_0,
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(9),
      I4 => write_pointer_reg(8),
      O => memory_reg_0_63_0_2_i_4_n_0
    );
memory_reg_0_63_0_2_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454005400540054"
    )
        port map (
      I0 => \^rst_0\,
      I1 => valid,
      I2 => framing_error,
      I3 => memory_reg_0_63_0_2_i_6_n_0,
      I4 => \occupancy[10]_i_8_n_0\,
      I5 => overflow_i_2_n_0,
      O => memory_reg_0_63_0_2_i_5_n_0
    );
memory_reg_0_63_0_2_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD7"
    )
        port map (
      I0 => command(1),
      I1 => \^ack_toggle_reg_0\,
      I2 => command(0),
      I3 => command(2),
      O => memory_reg_0_63_0_2_i_6_n_0
    );
memory_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_0_63_3_5_n_0,
      DOB => memory_reg_0_63_3_5_n_1,
      DOC => memory_reg_0_63_3_5_n_2,
      DOD => NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_0_63_0_2_i_4_n_0
    );
memory_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_0_63_6_8_n_0,
      DOB => memory_reg_0_63_6_8_n_1,
      DOC => memory_reg_0_63_6_8_n_2,
      DOD => NLW_memory_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_0_63_0_2_i_4_n_0
    );
memory_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_128_191_0_2_n_0,
      DOB => memory_reg_128_191_0_2_n_1,
      DOC => memory_reg_128_191_0_2_n_2,
      DOD => NLW_memory_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_128_191_0_2_i_1_n_0
    );
memory_reg_128_191_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => memory_reg_0_63_0_2_i_5_n_0,
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(9),
      I4 => write_pointer_reg(7),
      O => memory_reg_128_191_0_2_i_1_n_0
    );
memory_reg_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_128_191_3_5_n_0,
      DOB => memory_reg_128_191_3_5_n_1,
      DOC => memory_reg_128_191_3_5_n_2,
      DOD => NLW_memory_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_128_191_0_2_i_1_n_0
    );
memory_reg_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_128_191_6_8_n_0,
      DOB => memory_reg_128_191_6_8_n_1,
      DOC => memory_reg_128_191_6_8_n_2,
      DOD => NLW_memory_reg_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_128_191_0_2_i_1_n_0
    );
memory_reg_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_192_255_0_2_n_0,
      DOB => memory_reg_192_255_0_2_n_1,
      DOC => memory_reg_192_255_0_2_n_2,
      DOD => NLW_memory_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_192_255_0_2_i_1_n_0
    );
memory_reg_192_255_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(8),
      I4 => memory_reg_0_63_0_2_i_5_n_0,
      O => memory_reg_192_255_0_2_i_1_n_0
    );
memory_reg_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_192_255_3_5_n_0,
      DOB => memory_reg_192_255_3_5_n_1,
      DOC => memory_reg_192_255_3_5_n_2,
      DOD => NLW_memory_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_192_255_0_2_i_1_n_0
    );
memory_reg_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_192_255_6_8_n_0,
      DOB => memory_reg_192_255_6_8_n_1,
      DOC => memory_reg_192_255_6_8_n_2,
      DOD => NLW_memory_reg_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_192_255_0_2_i_1_n_0
    );
memory_reg_256_319_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_256_319_0_2_n_0,
      DOB => memory_reg_256_319_0_2_n_1,
      DOC => memory_reg_256_319_0_2_n_2,
      DOD => NLW_memory_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_256_319_0_2_i_1_n_0
    );
memory_reg_256_319_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => memory_reg_0_63_0_2_i_5_n_0,
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(9),
      I4 => write_pointer_reg(8),
      O => memory_reg_256_319_0_2_i_1_n_0
    );
memory_reg_256_319_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_256_319_3_5_n_0,
      DOB => memory_reg_256_319_3_5_n_1,
      DOC => memory_reg_256_319_3_5_n_2,
      DOD => NLW_memory_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_256_319_0_2_i_1_n_0
    );
memory_reg_256_319_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_256_319_6_8_n_0,
      DOB => memory_reg_256_319_6_8_n_1,
      DOC => memory_reg_256_319_6_8_n_2,
      DOD => NLW_memory_reg_256_319_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_256_319_0_2_i_1_n_0
    );
memory_reg_320_383_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_320_383_0_2_n_0,
      DOB => memory_reg_320_383_0_2_n_1,
      DOC => memory_reg_320_383_0_2_n_2,
      DOD => NLW_memory_reg_320_383_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_320_383_0_2_i_1_n_0
    );
memory_reg_320_383_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(7),
      I4 => memory_reg_0_63_0_2_i_5_n_0,
      O => memory_reg_320_383_0_2_i_1_n_0
    );
memory_reg_320_383_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_320_383_3_5_n_0,
      DOB => memory_reg_320_383_3_5_n_1,
      DOC => memory_reg_320_383_3_5_n_2,
      DOD => NLW_memory_reg_320_383_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_320_383_0_2_i_1_n_0
    );
memory_reg_320_383_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_320_383_6_8_n_0,
      DOB => memory_reg_320_383_6_8_n_1,
      DOC => memory_reg_320_383_6_8_n_2,
      DOD => NLW_memory_reg_320_383_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_320_383_0_2_i_1_n_0
    );
memory_reg_384_447_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_384_447_0_2_n_0,
      DOB => memory_reg_384_447_0_2_n_1,
      DOC => memory_reg_384_447_0_2_n_2,
      DOD => NLW_memory_reg_384_447_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_384_447_0_2_i_1_n_0
    );
memory_reg_384_447_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(6),
      I4 => memory_reg_0_63_0_2_i_5_n_0,
      O => memory_reg_384_447_0_2_i_1_n_0
    );
memory_reg_384_447_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_384_447_3_5_n_0,
      DOB => memory_reg_384_447_3_5_n_1,
      DOC => memory_reg_384_447_3_5_n_2,
      DOD => NLW_memory_reg_384_447_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_384_447_0_2_i_1_n_0
    );
memory_reg_384_447_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_384_447_6_8_n_0,
      DOB => memory_reg_384_447_6_8_n_1,
      DOC => memory_reg_384_447_6_8_n_2,
      DOD => NLW_memory_reg_384_447_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_384_447_0_2_i_1_n_0
    );
memory_reg_448_511_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_448_511_0_2_n_0,
      DOB => memory_reg_448_511_0_2_n_1,
      DOC => memory_reg_448_511_0_2_n_2,
      DOD => NLW_memory_reg_448_511_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_448_511_0_2_i_1_n_0
    );
memory_reg_448_511_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(6),
      I3 => memory_reg_0_63_0_2_i_5_n_0,
      I4 => write_pointer_reg(8),
      O => memory_reg_448_511_0_2_i_1_n_0
    );
memory_reg_448_511_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_448_511_3_5_n_0,
      DOB => memory_reg_448_511_3_5_n_1,
      DOC => memory_reg_448_511_3_5_n_2,
      DOD => NLW_memory_reg_448_511_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_448_511_0_2_i_1_n_0
    );
memory_reg_448_511_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_448_511_6_8_n_0,
      DOB => memory_reg_448_511_6_8_n_1,
      DOC => memory_reg_448_511_6_8_n_2,
      DOD => NLW_memory_reg_448_511_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_448_511_0_2_i_1_n_0
    );
memory_reg_512_575_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_512_575_0_2_n_0,
      DOB => memory_reg_512_575_0_2_n_1,
      DOC => memory_reg_512_575_0_2_n_2,
      DOD => NLW_memory_reg_512_575_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_512_575_0_2_i_1_n_0
    );
memory_reg_512_575_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => memory_reg_0_63_0_2_i_5_n_0,
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(8),
      I4 => write_pointer_reg(9),
      O => memory_reg_512_575_0_2_i_1_n_0
    );
memory_reg_512_575_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_512_575_3_5_n_0,
      DOB => memory_reg_512_575_3_5_n_1,
      DOC => memory_reg_512_575_3_5_n_2,
      DOD => NLW_memory_reg_512_575_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_512_575_0_2_i_1_n_0
    );
memory_reg_512_575_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_512_575_6_8_n_0,
      DOB => memory_reg_512_575_6_8_n_1,
      DOC => memory_reg_512_575_6_8_n_2,
      DOD => NLW_memory_reg_512_575_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_512_575_0_2_i_1_n_0
    );
memory_reg_576_639_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_576_639_0_2_n_0,
      DOB => memory_reg_576_639_0_2_n_1,
      DOC => memory_reg_576_639_0_2_n_2,
      DOD => NLW_memory_reg_576_639_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_576_639_0_2_i_1_n_0
    );
memory_reg_576_639_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => write_pointer_reg(8),
      I1 => write_pointer_reg(9),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(7),
      I4 => memory_reg_0_63_0_2_i_5_n_0,
      O => memory_reg_576_639_0_2_i_1_n_0
    );
memory_reg_576_639_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_576_639_3_5_n_0,
      DOB => memory_reg_576_639_3_5_n_1,
      DOC => memory_reg_576_639_3_5_n_2,
      DOD => NLW_memory_reg_576_639_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_576_639_0_2_i_1_n_0
    );
memory_reg_576_639_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_576_639_6_8_n_0,
      DOB => memory_reg_576_639_6_8_n_1,
      DOC => memory_reg_576_639_6_8_n_2,
      DOD => NLW_memory_reg_576_639_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_576_639_0_2_i_1_n_0
    );
memory_reg_640_703_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_640_703_0_2_n_0,
      DOB => memory_reg_640_703_0_2_n_1,
      DOC => memory_reg_640_703_0_2_n_2,
      DOD => NLW_memory_reg_640_703_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_640_703_0_2_i_1_n_0
    );
memory_reg_640_703_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => write_pointer_reg(8),
      I1 => write_pointer_reg(9),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(6),
      I4 => memory_reg_0_63_0_2_i_5_n_0,
      O => memory_reg_640_703_0_2_i_1_n_0
    );
memory_reg_640_703_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_640_703_3_5_n_0,
      DOB => memory_reg_640_703_3_5_n_1,
      DOC => memory_reg_640_703_3_5_n_2,
      DOD => NLW_memory_reg_640_703_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_640_703_0_2_i_1_n_0
    );
memory_reg_640_703_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_640_703_6_8_n_0,
      DOB => memory_reg_640_703_6_8_n_1,
      DOC => memory_reg_640_703_6_8_n_2,
      DOD => NLW_memory_reg_640_703_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_640_703_0_2_i_1_n_0
    );
memory_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_64_127_0_2_n_0,
      DOB => memory_reg_64_127_0_2_n_1,
      DOC => memory_reg_64_127_0_2_n_2,
      DOD => NLW_memory_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_64_127_0_2_i_1_n_0
    );
memory_reg_64_127_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => memory_reg_0_63_0_2_i_5_n_0,
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(9),
      I4 => write_pointer_reg(6),
      O => memory_reg_64_127_0_2_i_1_n_0
    );
memory_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_64_127_3_5_n_0,
      DOB => memory_reg_64_127_3_5_n_1,
      DOC => memory_reg_64_127_3_5_n_2,
      DOD => NLW_memory_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_64_127_0_2_i_1_n_0
    );
memory_reg_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_64_127_6_8_n_0,
      DOB => memory_reg_64_127_6_8_n_1,
      DOC => memory_reg_64_127_6_8_n_2,
      DOD => NLW_memory_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_64_127_0_2_i_1_n_0
    );
memory_reg_704_767_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_704_767_0_2_n_0,
      DOB => memory_reg_704_767_0_2_n_1,
      DOC => memory_reg_704_767_0_2_n_2,
      DOD => NLW_memory_reg_704_767_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_704_767_0_2_i_1_n_0
    );
memory_reg_704_767_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => write_pointer_reg(8),
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(6),
      I3 => memory_reg_0_63_0_2_i_5_n_0,
      I4 => write_pointer_reg(9),
      O => memory_reg_704_767_0_2_i_1_n_0
    );
memory_reg_704_767_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_704_767_3_5_n_0,
      DOB => memory_reg_704_767_3_5_n_1,
      DOC => memory_reg_704_767_3_5_n_2,
      DOD => NLW_memory_reg_704_767_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_704_767_0_2_i_1_n_0
    );
memory_reg_704_767_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_704_767_6_8_n_0,
      DOB => memory_reg_704_767_6_8_n_1,
      DOC => memory_reg_704_767_6_8_n_2,
      DOD => NLW_memory_reg_704_767_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_704_767_0_2_i_1_n_0
    );
memory_reg_768_831_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_768_831_0_2_n_0,
      DOB => memory_reg_768_831_0_2_n_1,
      DOC => memory_reg_768_831_0_2_n_2,
      DOD => NLW_memory_reg_768_831_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_768_831_0_2_i_1_n_0
    );
memory_reg_768_831_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => write_pointer_reg(9),
      I2 => write_pointer_reg(8),
      I3 => write_pointer_reg(6),
      I4 => memory_reg_0_63_0_2_i_5_n_0,
      O => memory_reg_768_831_0_2_i_1_n_0
    );
memory_reg_768_831_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_768_831_3_5_n_0,
      DOB => memory_reg_768_831_3_5_n_1,
      DOC => memory_reg_768_831_3_5_n_2,
      DOD => NLW_memory_reg_768_831_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_768_831_0_2_i_1_n_0
    );
memory_reg_768_831_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_768_831_6_8_n_0,
      DOB => memory_reg_768_831_6_8_n_1,
      DOC => memory_reg_768_831_6_8_n_2,
      DOD => NLW_memory_reg_768_831_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_768_831_0_2_i_1_n_0
    );
memory_reg_832_895_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_832_895_0_2_n_0,
      DOB => memory_reg_832_895_0_2_n_1,
      DOC => memory_reg_832_895_0_2_n_2,
      DOD => NLW_memory_reg_832_895_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_832_895_0_2_i_1_n_0
    );
memory_reg_832_895_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(6),
      I3 => memory_reg_0_63_0_2_i_5_n_0,
      I4 => write_pointer_reg(9),
      O => memory_reg_832_895_0_2_i_1_n_0
    );
memory_reg_832_895_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_832_895_3_5_n_0,
      DOB => memory_reg_832_895_3_5_n_1,
      DOC => memory_reg_832_895_3_5_n_2,
      DOD => NLW_memory_reg_832_895_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_832_895_0_2_i_1_n_0
    );
memory_reg_832_895_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_832_895_6_8_n_0,
      DOB => memory_reg_832_895_6_8_n_1,
      DOC => memory_reg_832_895_6_8_n_2,
      DOD => NLW_memory_reg_832_895_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_832_895_0_2_i_1_n_0
    );
memory_reg_896_959_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_896_959_0_2_n_0,
      DOB => memory_reg_896_959_0_2_n_1,
      DOC => memory_reg_896_959_0_2_n_2,
      DOD => NLW_memory_reg_896_959_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_896_959_0_2_i_1_n_0
    );
memory_reg_896_959_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(7),
      I3 => memory_reg_0_63_0_2_i_5_n_0,
      I4 => write_pointer_reg(9),
      O => memory_reg_896_959_0_2_i_1_n_0
    );
memory_reg_896_959_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_896_959_3_5_n_0,
      DOB => memory_reg_896_959_3_5_n_1,
      DOC => memory_reg_896_959_3_5_n_2,
      DOD => NLW_memory_reg_896_959_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_896_959_0_2_i_1_n_0
    );
memory_reg_896_959_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_896_959_6_8_n_0,
      DOB => memory_reg_896_959_6_8_n_1,
      DOC => memory_reg_896_959_6_8_n_2,
      DOD => NLW_memory_reg_896_959_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_896_959_0_2_i_1_n_0
    );
memory_reg_960_1023_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(0),
      DIB => p_1_in(1),
      DIC => p_1_in(2),
      DID => '0',
      DOA => memory_reg_960_1023_0_2_n_0,
      DOB => memory_reg_960_1023_0_2_n_1,
      DOC => memory_reg_960_1023_0_2_n_2,
      DOD => NLW_memory_reg_960_1023_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_960_1023_0_2_i_1_n_0
    );
memory_reg_960_1023_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => memory_reg_0_63_0_2_i_5_n_0,
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(9),
      I4 => write_pointer_reg(8),
      O => memory_reg_960_1023_0_2_i_1_n_0
    );
memory_reg_960_1023_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(3),
      DIB => p_1_in(4),
      DIC => p_1_in(5),
      DID => '0',
      DOA => memory_reg_960_1023_3_5_n_0,
      DOB => memory_reg_960_1023_3_5_n_1,
      DOC => memory_reg_960_1023_3_5_n_2,
      DOD => NLW_memory_reg_960_1023_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_960_1023_0_2_i_1_n_0
    );
memory_reg_960_1023_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => p_1_in(6),
      DIB => p_1_in(7),
      DIC => framing_error,
      DID => '0',
      DOA => memory_reg_960_1023_6_8_n_0,
      DOB => memory_reg_960_1023_6_8_n_1,
      DOC => memory_reg_960_1023_6_8_n_2,
      DOD => NLW_memory_reg_960_1023_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_960_1023_0_2_i_1_n_0
    );
\occupancy[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => occupancy(0)
    );
\occupancy[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F000000"
    )
        port map (
      I0 => command(5),
      I1 => command(4),
      I2 => command(1),
      I3 => new_command,
      I4 => command(2),
      I5 => \^rst_0\,
      O => occupancy_0
    );
\occupancy[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => pop_accepted,
      I1 => valid,
      I2 => framing_error,
      I3 => command_2_sn_1,
      O => \occupancy[10]_i_2_n_0\
    );
\occupancy[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ack_toggle_reg_0\,
      I1 => command(0),
      O => new_command
    );
\occupancy[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAAAAA"
    )
        port map (
      I0 => \occupancy[10]_i_8_n_0\,
      I1 => command(2),
      I2 => command(0),
      I3 => \^ack_toggle_reg_0\,
      I4 => command(1),
      O => command_2_sn_1
    );
\occupancy[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      O => \occupancy[10]_i_6_n_0\
    );
\occupancy[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \occupancy[10]_i_7_n_0\
    );
\occupancy[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \status[9]_INST_0_i_1_n_0\,
      I5 => \^q\(10),
      O => \occupancy[10]_i_8_n_0\
    );
\occupancy[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \occupancy[4]_i_3_n_0\
    );
\occupancy[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \occupancy[4]_i_4_n_0\
    );
\occupancy[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \occupancy[4]_i_5_n_0\
    );
\occupancy[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A955"
    )
        port map (
      I0 => \^q\(1),
      I1 => valid,
      I2 => framing_error,
      I3 => command_2_sn_1,
      O => \occupancy[4]_i_6_n_0\
    );
\occupancy[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      O => \occupancy[8]_i_2_n_0\
    );
\occupancy[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \occupancy[8]_i_3_n_0\
    );
\occupancy[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \occupancy[8]_i_4_n_0\
    );
\occupancy[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \occupancy[8]_i_5_n_0\
    );
\occupancy_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(0),
      Q => \^q\(0),
      R => occupancy_0
    );
\occupancy_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(10),
      Q => \^q\(10),
      R => occupancy_0
    );
\occupancy_reg[10]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \occupancy_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_occupancy_reg[10]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \occupancy_reg[10]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(8),
      O(3 downto 2) => \NLW_occupancy_reg[10]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => occupancy(10 downto 9),
      S(3 downto 2) => B"00",
      S(1) => \occupancy[10]_i_6_n_0\,
      S(0) => \occupancy[10]_i_7_n_0\
    );
\occupancy_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(1),
      Q => \^q\(1),
      R => occupancy_0
    );
\occupancy_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(2),
      Q => \^q\(2),
      R => occupancy_0
    );
\occupancy_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(3),
      Q => \^q\(3),
      R => occupancy_0
    );
\occupancy_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(4),
      Q => \^q\(4),
      R => occupancy_0
    );
\occupancy_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \occupancy_reg[4]_i_1_n_0\,
      CO(2) => \occupancy_reg[4]_i_1_n_1\,
      CO(1) => \occupancy_reg[4]_i_1_n_2\,
      CO(0) => \occupancy_reg[4]_i_1_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 1) => \^q\(3 downto 1),
      DI(0) => \occupancy_reg[4]_0\(0),
      O(3 downto 0) => occupancy(4 downto 1),
      S(3) => \occupancy[4]_i_3_n_0\,
      S(2) => \occupancy[4]_i_4_n_0\,
      S(1) => \occupancy[4]_i_5_n_0\,
      S(0) => \occupancy[4]_i_6_n_0\
    );
\occupancy_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(5),
      Q => \^q\(5),
      R => occupancy_0
    );
\occupancy_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(6),
      Q => \^q\(6),
      R => occupancy_0
    );
\occupancy_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(7),
      Q => \^q\(7),
      R => occupancy_0
    );
\occupancy_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(8),
      Q => \^q\(8),
      R => occupancy_0
    );
\occupancy_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \occupancy_reg[4]_i_1_n_0\,
      CO(3) => \occupancy_reg[8]_i_1_n_0\,
      CO(2) => \occupancy_reg[8]_i_1_n_1\,
      CO(1) => \occupancy_reg[8]_i_1_n_2\,
      CO(0) => \occupancy_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => occupancy(8 downto 5),
      S(3) => \occupancy[8]_i_2_n_0\,
      S(2) => \occupancy[8]_i_3_n_0\,
      S(1) => \occupancy[8]_i_4_n_0\,
      S(0) => \occupancy[8]_i_5_n_0\
    );
\occupancy_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(9),
      Q => \^q\(9),
      R => occupancy_0
    );
overflow_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555111000000000"
    )
        port map (
      I0 => \^rst_0\,
      I1 => command_2_sn_1,
      I2 => valid,
      I3 => framing_error,
      I4 => \^occupancy_reg[3]_0\(10),
      I5 => overflow_i_2_n_0,
      O => overflow_i_1_n_0
    );
overflow_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD555D555FFFF"
    )
        port map (
      I0 => command(2),
      I1 => command(1),
      I2 => command(4),
      I3 => command(5),
      I4 => command(0),
      I5 => \^ack_toggle_reg_0\,
      O => overflow_i_2_n_0
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => overflow_i_1_n_0,
      Q => \^occupancy_reg[3]_0\(10),
      R => '0'
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_pointer_reg(0),
      O => p_0_in(0)
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => read_pointer_reg(1),
      O => p_0_in(1)
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_pointer_reg(1),
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(2),
      O => p_0_in(2)
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => read_pointer_reg(2),
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(1),
      I3 => read_pointer_reg(3),
      O => p_0_in(3)
    );
\read_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_pointer_reg(3),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(2),
      I4 => read_pointer_reg(4),
      O => p_0_in(4)
    );
\read_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_pointer_reg(4),
      I1 => read_pointer_reg(2),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(1),
      I4 => read_pointer_reg(3),
      I5 => read_pointer_reg(5),
      O => p_0_in(5)
    );
\read_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_pointer[9]_i_3_n_0\,
      I1 => read_pointer_reg(6),
      O => p_0_in(6)
    );
\read_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_pointer_reg(6),
      I1 => \read_pointer[9]_i_3_n_0\,
      I2 => read_pointer_reg(7),
      O => p_0_in(7)
    );
\read_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_pointer[9]_i_3_n_0\,
      I1 => read_pointer_reg(6),
      I2 => read_pointer_reg(7),
      I3 => read_pointer_reg(8),
      O => p_0_in(8)
    );
\read_pointer[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02200000"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(9),
      I1 => command(2),
      I2 => command(0),
      I3 => \^ack_toggle_reg_0\,
      I4 => command(1),
      O => pop_accepted
    );
\read_pointer[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \read_pointer[9]_i_3_n_0\,
      I1 => read_pointer_reg(8),
      I2 => read_pointer_reg(7),
      I3 => read_pointer_reg(6),
      I4 => read_pointer_reg(9),
      O => p_0_in(9)
    );
\read_pointer[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => read_pointer_reg(4),
      I1 => read_pointer_reg(2),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(1),
      I4 => read_pointer_reg(3),
      I5 => read_pointer_reg(5),
      O => \read_pointer[9]_i_3_n_0\
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(0),
      Q => read_pointer_reg(0),
      R => occupancy_0
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(1),
      Q => read_pointer_reg(1),
      R => occupancy_0
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(2),
      Q => read_pointer_reg(2),
      R => occupancy_0
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(3),
      Q => read_pointer_reg(3),
      R => occupancy_0
    );
\read_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(4),
      Q => read_pointer_reg(4),
      R => occupancy_0
    );
\read_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(5),
      Q => read_pointer_reg(5),
      R => occupancy_0
    );
\read_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(6),
      Q => read_pointer_reg(6),
      R => occupancy_0
    );
\read_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(7),
      Q => read_pointer_reg(7),
      R => occupancy_0
    );
\read_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(8),
      Q => read_pointer_reg(8),
      R => occupancy_0
    );
\read_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pop_accepted,
      D => p_0_in(9),
      Q => read_pointer_reg(9),
      R => occupancy_0
    );
rx_flush_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002A002A000000"
    )
        port map (
      I0 => command(2),
      I1 => command(4),
      I2 => command(5),
      I3 => command(1),
      I4 => \^ack_toggle_reg_0\,
      I5 => command(0),
      O => baud_requested
    );
rx_flush_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => baud_requested,
      Q => rx_flush,
      S => rst
    );
\status[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[0]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[0]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[0]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(0)
    );
\status[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[0]_INST_0_i_4_n_0\,
      I1 => \status[0]_INST_0_i_5_n_0\,
      O => \status[0]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_0_2_n_0,
      I1 => memory_reg_640_703_0_2_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_0_2_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_0_2_n_0,
      O => \status[0]_INST_0_i_2_n_0\
    );
\status[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_0_2_n_0,
      I1 => memory_reg_896_959_0_2_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_0_2_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_0_2_n_0,
      O => \status[0]_INST_0_i_3_n_0\
    );
\status[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_0_2_n_0,
      I1 => memory_reg_128_191_0_2_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_0_2_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_0_2_n_0,
      O => \status[0]_INST_0_i_4_n_0\
    );
\status[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_0_2_n_0,
      I1 => memory_reg_384_447_0_2_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_0_2_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_0_2_n_0,
      O => \status[0]_INST_0_i_5_n_0\
    );
\status[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(9),
      I1 => head0(8),
      O => \^occupancy_reg[3]_0\(11)
    );
\status[12]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \status[12]_INST_0_i_2_n_0\,
      I1 => \status[12]_INST_0_i_3_n_0\,
      O => head0(8),
      S => read_pointer_reg(9)
    );
\status[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[12]_INST_0_i_4_n_0\,
      I1 => \status[12]_INST_0_i_5_n_0\,
      O => \status[12]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[12]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[12]_INST_0_i_6_n_0\,
      I1 => \status[12]_INST_0_i_7_n_0\,
      O => \status[12]_INST_0_i_3_n_0\,
      S => read_pointer_reg(8)
    );
\status[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_6_8_n_2,
      I1 => memory_reg_128_191_6_8_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_6_8_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_6_8_n_2,
      O => \status[12]_INST_0_i_4_n_0\
    );
\status[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_6_8_n_2,
      I1 => memory_reg_384_447_6_8_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_6_8_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_6_8_n_2,
      O => \status[12]_INST_0_i_5_n_0\
    );
\status[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_6_8_n_2,
      I1 => memory_reg_640_703_6_8_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_6_8_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_6_8_n_2,
      O => \status[12]_INST_0_i_6_n_0\
    );
\status[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_6_8_n_2,
      I1 => memory_reg_896_959_6_8_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_6_8_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_6_8_n_2,
      O => \status[12]_INST_0_i_7_n_0\
    );
\status[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[1]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[1]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[1]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(1)
    );
\status[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[1]_INST_0_i_4_n_0\,
      I1 => \status[1]_INST_0_i_5_n_0\,
      O => \status[1]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_0_2_n_1,
      I1 => memory_reg_640_703_0_2_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_0_2_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_0_2_n_1,
      O => \status[1]_INST_0_i_2_n_0\
    );
\status[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_0_2_n_1,
      I1 => memory_reg_896_959_0_2_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_0_2_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_0_2_n_1,
      O => \status[1]_INST_0_i_3_n_0\
    );
\status[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_0_2_n_1,
      I1 => memory_reg_128_191_0_2_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_0_2_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_0_2_n_1,
      O => \status[1]_INST_0_i_4_n_0\
    );
\status[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_0_2_n_1,
      I1 => memory_reg_384_447_0_2_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_0_2_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_0_2_n_1,
      O => \status[1]_INST_0_i_5_n_0\
    );
\status[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[2]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[2]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[2]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(2)
    );
\status[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[2]_INST_0_i_4_n_0\,
      I1 => \status[2]_INST_0_i_5_n_0\,
      O => \status[2]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_0_2_n_2,
      I1 => memory_reg_640_703_0_2_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_0_2_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_0_2_n_2,
      O => \status[2]_INST_0_i_2_n_0\
    );
\status[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_0_2_n_2,
      I1 => memory_reg_896_959_0_2_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_0_2_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_0_2_n_2,
      O => \status[2]_INST_0_i_3_n_0\
    );
\status[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_0_2_n_2,
      I1 => memory_reg_128_191_0_2_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_0_2_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_0_2_n_2,
      O => \status[2]_INST_0_i_4_n_0\
    );
\status[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_0_2_n_2,
      I1 => memory_reg_384_447_0_2_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_0_2_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_0_2_n_2,
      O => \status[2]_INST_0_i_5_n_0\
    );
\status[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[3]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[3]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[3]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(3)
    );
\status[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[3]_INST_0_i_4_n_0\,
      I1 => \status[3]_INST_0_i_5_n_0\,
      O => \status[3]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_3_5_n_0,
      I1 => memory_reg_640_703_3_5_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_3_5_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_3_5_n_0,
      O => \status[3]_INST_0_i_2_n_0\
    );
\status[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_3_5_n_0,
      I1 => memory_reg_896_959_3_5_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_3_5_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_3_5_n_0,
      O => \status[3]_INST_0_i_3_n_0\
    );
\status[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_3_5_n_0,
      I1 => memory_reg_128_191_3_5_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_3_5_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_3_5_n_0,
      O => \status[3]_INST_0_i_4_n_0\
    );
\status[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_3_5_n_0,
      I1 => memory_reg_384_447_3_5_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_3_5_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_3_5_n_0,
      O => \status[3]_INST_0_i_5_n_0\
    );
\status[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[4]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[4]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[4]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(4)
    );
\status[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[4]_INST_0_i_4_n_0\,
      I1 => \status[4]_INST_0_i_5_n_0\,
      O => \status[4]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_3_5_n_1,
      I1 => memory_reg_640_703_3_5_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_3_5_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_3_5_n_1,
      O => \status[4]_INST_0_i_2_n_0\
    );
\status[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_3_5_n_1,
      I1 => memory_reg_896_959_3_5_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_3_5_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_3_5_n_1,
      O => \status[4]_INST_0_i_3_n_0\
    );
\status[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_3_5_n_1,
      I1 => memory_reg_128_191_3_5_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_3_5_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_3_5_n_1,
      O => \status[4]_INST_0_i_4_n_0\
    );
\status[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_3_5_n_1,
      I1 => memory_reg_384_447_3_5_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_3_5_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_3_5_n_1,
      O => \status[4]_INST_0_i_5_n_0\
    );
\status[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[5]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[5]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[5]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(5)
    );
\status[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[5]_INST_0_i_4_n_0\,
      I1 => \status[5]_INST_0_i_5_n_0\,
      O => \status[5]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_3_5_n_2,
      I1 => memory_reg_640_703_3_5_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_3_5_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_3_5_n_2,
      O => \status[5]_INST_0_i_2_n_0\
    );
\status[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_3_5_n_2,
      I1 => memory_reg_896_959_3_5_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_3_5_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_3_5_n_2,
      O => \status[5]_INST_0_i_3_n_0\
    );
\status[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_3_5_n_2,
      I1 => memory_reg_128_191_3_5_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_3_5_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_3_5_n_2,
      O => \status[5]_INST_0_i_4_n_0\
    );
\status[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_3_5_n_2,
      I1 => memory_reg_384_447_3_5_n_2,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_3_5_n_2,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_3_5_n_2,
      O => \status[5]_INST_0_i_5_n_0\
    );
\status[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[6]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[6]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[6]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(6)
    );
\status[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[6]_INST_0_i_4_n_0\,
      I1 => \status[6]_INST_0_i_5_n_0\,
      O => \status[6]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_6_8_n_0,
      I1 => memory_reg_640_703_6_8_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_6_8_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_6_8_n_0,
      O => \status[6]_INST_0_i_2_n_0\
    );
\status[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_6_8_n_0,
      I1 => memory_reg_896_959_6_8_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_6_8_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_6_8_n_0,
      O => \status[6]_INST_0_i_3_n_0\
    );
\status[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_6_8_n_0,
      I1 => memory_reg_128_191_6_8_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_6_8_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_6_8_n_0,
      O => \status[6]_INST_0_i_4_n_0\
    );
\status[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_6_8_n_0,
      I1 => memory_reg_384_447_6_8_n_0,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_6_8_n_0,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_6_8_n_0,
      O => \status[6]_INST_0_i_5_n_0\
    );
\status[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => \status[7]_INST_0_i_1_n_0\,
      I2 => read_pointer_reg(9),
      I3 => \status[7]_INST_0_i_2_n_0\,
      I4 => read_pointer_reg(8),
      I5 => \status[7]_INST_0_i_3_n_0\,
      O => \^occupancy_reg[3]_0\(7)
    );
\status[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[7]_INST_0_i_4_n_0\,
      I1 => \status[7]_INST_0_i_5_n_0\,
      O => \status[7]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_704_767_6_8_n_1,
      I1 => memory_reg_640_703_6_8_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_576_639_6_8_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_512_575_6_8_n_1,
      O => \status[7]_INST_0_i_2_n_0\
    );
\status[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_960_1023_6_8_n_1,
      I1 => memory_reg_896_959_6_8_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_832_895_6_8_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_768_831_6_8_n_1,
      O => \status[7]_INST_0_i_3_n_0\
    );
\status[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_192_255_6_8_n_1,
      I1 => memory_reg_128_191_6_8_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_64_127_6_8_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_0_63_6_8_n_1,
      O => \status[7]_INST_0_i_4_n_0\
    );
\status[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => memory_reg_448_511_6_8_n_1,
      I1 => memory_reg_384_447_6_8_n_1,
      I2 => read_pointer_reg(7),
      I3 => memory_reg_320_383_6_8_n_1,
      I4 => read_pointer_reg(6),
      I5 => memory_reg_256_319_6_8_n_1,
      O => \status[7]_INST_0_i_5_n_0\
    );
\status[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(9),
      I1 => head0(8),
      O => \^occupancy_reg[3]_0\(8)
    );
\status[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \status[9]_INST_0_i_1_n_0\,
      I5 => \^q\(10),
      O => \^occupancy_reg[3]_0\(9)
    );
\status[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \status[9]_INST_0_i_1_n_0\
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer_reg(0),
      O => \p_0_in__0\(0)
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => write_pointer_reg(1),
      O => \p_0_in__0\(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_pointer_reg(1),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(2),
      O => \p_0_in__0\(2)
    );
\write_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_pointer_reg(2),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(1),
      I3 => write_pointer_reg(3),
      O => \p_0_in__0\(3)
    );
\write_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => write_pointer_reg(1),
      I2 => write_pointer_reg(0),
      I3 => write_pointer_reg(2),
      I4 => write_pointer_reg(4),
      O => \p_0_in__0\(4)
    );
\write_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_pointer_reg(4),
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(0),
      I3 => write_pointer_reg(1),
      I4 => write_pointer_reg(3),
      I5 => write_pointer_reg(5),
      O => \p_0_in__0\(5)
    );
\write_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \write_pointer[9]_i_3_n_0\,
      I1 => write_pointer_reg(6),
      O => \p_0_in__0\(6)
    );
\write_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => \write_pointer[9]_i_3_n_0\,
      I2 => write_pointer_reg(7),
      O => \p_0_in__0\(7)
    );
\write_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \write_pointer[9]_i_3_n_0\,
      I1 => write_pointer_reg(6),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(8),
      O => \p_0_in__0\(8)
    );
\write_pointer[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \write_pointer[9]_i_3_n_0\,
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(6),
      I4 => write_pointer_reg(9),
      O => \p_0_in__0\(9)
    );
\write_pointer[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => write_pointer_reg(4),
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(0),
      I3 => write_pointer_reg(1),
      I4 => write_pointer_reg(3),
      I5 => write_pointer_reg(5),
      O => \write_pointer[9]_i_3_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(0),
      Q => write_pointer_reg(0),
      R => occupancy_0
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => write_pointer_reg(1),
      R => occupancy_0
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => write_pointer_reg(2),
      R => occupancy_0
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => write_pointer_reg(3),
      R => occupancy_0
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(4),
      Q => write_pointer_reg(4),
      R => occupancy_0
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(5),
      Q => write_pointer_reg(5),
      R => occupancy_0
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(6),
      Q => write_pointer_reg(6),
      R => occupancy_0
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(7),
      Q => write_pointer_reg(7),
      R => occupancy_0
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(8),
      Q => write_pointer_reg(8),
      R => occupancy_0
    );
\write_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(9),
      Q => write_pointer_reg(9),
      R => occupancy_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_system_uart_diag_baud_core_0_0_uart_rx_baud is
  port (
    valid : out STD_LOGIC;
    framing_error : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    framing_error_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \write_pointer_reg[9]\ : in STD_LOGIC;
    \state0_inferred__0/i__carry_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    state10_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state0_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state1_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_system_uart_diag_baud_core_0_0_uart_rx_baud : entity is "uart_rx_baud";
end uart_system_uart_diag_baud_core_0_0_uart_rx_baud;

architecture STRUCTURE of uart_system_uart_diag_baud_core_0_0_uart_rx_baud is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_inv_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[1]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_4_n_0\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[2]\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__0_n_4\ : STD_LOGIC;
  signal \count0_carry__0_n_5\ : STD_LOGIC;
  signal \count0_carry__0_n_6\ : STD_LOGIC;
  signal \count0_carry__0_n_7\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_4\ : STD_LOGIC;
  signal \count0_carry__1_n_5\ : STD_LOGIC;
  signal \count0_carry__1_n_6\ : STD_LOGIC;
  signal \count0_carry__1_n_7\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_5\ : STD_LOGIC;
  signal \count0_carry__2_n_6\ : STD_LOGIC;
  signal \count0_carry__2_n_7\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count0_carry_n_4 : STD_LOGIC;
  signal count0_carry_n_5 : STD_LOGIC;
  signal count0_carry_n_6 : STD_LOGIC;
  signal count0_carry_n_7 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_1_n_0\ : STD_LOGIC;
  signal \count[14]_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \^framing_error\ : STD_LOGIC;
  signal framing_error_i_1_n_0 : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal rx_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rx_meta : signal is "true";
  signal rx_sync : STD_LOGIC;
  attribute async_reg of rx_sync : signal is "true";
  signal state0 : STD_LOGIC;
  signal \state0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal state1 : STD_LOGIC;
  signal \state1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^valid\ : STD_LOGIC;
  signal valid_i_1_n_0 : STD_LOGIC;
  signal \NLW_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]_inv\ : label is "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_state_reg[2]_inv\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_shift[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_shift[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_shift[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_shift[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_shift[4]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_shift[5]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_shift[6]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_shift[7]_i_2\ : label is "soft_lutpair11";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rx_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rx_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rx_sync_reg : label is std.standard.true;
  attribute KEEP of rx_sync_reg : label is "yes";
begin
  Q(0) <= \^q\(0);
  framing_error <= \^framing_error\;
  valid <= \^valid\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A8080757F8A8A"
    )
        port map (
      I0 => count,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => state0,
      I4 => \state__0\(0),
      I5 => rx_sync,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020A0A07A70F0F0"
    )
        port map (
      I0 => count,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => state0,
      I4 => \state__0\(0),
      I5 => rx_sync,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8888888"
    )
        port map (
      I0 => \state__0\(0),
      I1 => state1,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => \bit_index_reg_n_0_[2]\,
      I4 => \bit_index_reg_n_0_[1]\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_inv_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
        port map (
      I0 => count,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => rx_sync,
      O => \FSM_sequential_state[2]_inv_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_2_n_0\,
      Q => \state__0\(1),
      R => SR(0)
    );
\FSM_sequential_state_reg[2]_inv\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_inv_i_1_n_0\,
      Q => count,
      S => SR(0)
    );
\bit_index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \bit_index[0]_i_2_n_0\,
      I1 => \bit_index[2]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => \bit_index[2]_i_4_n_0\,
      I4 => \bit_index_reg_n_0_[0]\,
      O => \bit_index[0]_i_1_n_0\
    );
\bit_index[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => rx_sync,
      I1 => \state__0\(1),
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => count,
      O => \bit_index[0]_i_2_n_0\
    );
\bit_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \bit_index[1]_i_2_n_0\,
      I1 => \bit_index[2]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => \bit_index[2]_i_4_n_0\,
      I4 => \bit_index_reg_n_0_[1]\,
      O => \bit_index[1]_i_1_n_0\
    );
\bit_index[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EE20000"
    )
        port map (
      I0 => rx_sync,
      I1 => \state__0\(1),
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => \bit_index_reg_n_0_[0]\,
      I4 => count,
      O => \bit_index[1]_i_2_n_0\
    );
\bit_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \bit_index[2]_i_2_n_0\,
      I1 => \bit_index[2]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => \bit_index[2]_i_4_n_0\,
      I4 => \bit_index_reg_n_0_[2]\,
      O => \bit_index[2]_i_1_n_0\
    );
\bit_index[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EE2E2E200000000"
    )
        port map (
      I0 => rx_sync,
      I1 => \state__0\(1),
      I2 => \bit_index_reg_n_0_[2]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => \bit_index_reg_n_0_[0]\,
      I5 => count,
      O => \bit_index[2]_i_2_n_0\
    );
\bit_index[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_sync,
      I1 => state0,
      I2 => \state__0\(1),
      I3 => count,
      O => \bit_index[2]_i_3_n_0\
    );
\bit_index[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808080808080"
    )
        port map (
      I0 => count,
      I1 => \state__0\(1),
      I2 => state1,
      I3 => \bit_index_reg_n_0_[0]\,
      I4 => \bit_index_reg_n_0_[2]\,
      I5 => \bit_index_reg_n_0_[1]\,
      O => \bit_index[2]_i_4_n_0\
    );
\bit_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_index[0]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[0]\,
      R => SR(0)
    );
\bit_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_index[1]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[1]\,
      R => SR(0)
    );
\bit_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_index[2]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[2]\,
      R => SR(0)
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => count0_carry_n_4,
      O(2) => count0_carry_n_5,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__0_n_4\,
      O(2) => \count0_carry__0_n_5\,
      O(1) => \count0_carry__0_n_6\,
      O(0) => \count0_carry__0_n_7\,
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__1_n_4\,
      O(2) => \count0_carry__1_n_5\,
      O(1) => \count0_carry__1_n_6\,
      O(0) => \count0_carry__1_n_7\,
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__2_O_UNCONNECTED\(3),
      O(2) => \count0_carry__2_n_5\,
      O(1) => \count0_carry__2_n_6\,
      O(0) => \count0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \^q\(0),
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00105510"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__1_n_6\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[10]_i_1_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__1_n_5\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[11]_i_1_n_0\
    );
\count[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__1_n_4\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[12]_i_1_n_0\
    );
\count[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__2_n_7\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[13]_i_1_n_0\
    );
\count[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__2_n_6\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[14]_i_1_n_0\
    );
\count[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__2_n_5\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[15]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => count0_carry_n_7,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => count0_carry_n_6,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => count0_carry_n_5,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => count0_carry_n_4,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__0_n_7\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__0_n_6\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__0_n_5\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__0_n_4\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => \count0_carry__1_n_7\,
      I1 => state0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => state1,
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => SR(0)
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[10]_i_1_n_0\,
      Q => \count_reg_n_0_[10]\,
      R => SR(0)
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[11]_i_1_n_0\,
      Q => \count_reg_n_0_[11]\,
      R => SR(0)
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[12]_i_1_n_0\,
      Q => \count_reg_n_0_[12]\,
      R => SR(0)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[13]_i_1_n_0\,
      Q => \count_reg_n_0_[13]\,
      R => SR(0)
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[14]_i_1_n_0\,
      Q => \count_reg_n_0_[14]\,
      R => SR(0)
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[15]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => SR(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => SR(0)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[3]_i_1_n_0\,
      Q => \count_reg_n_0_[3]\,
      R => SR(0)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[4]_i_1_n_0\,
      Q => \count_reg_n_0_[4]\,
      R => SR(0)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[5]_i_1_n_0\,
      Q => \count_reg_n_0_[5]\,
      R => SR(0)
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[6]_i_1_n_0\,
      Q => \count_reg_n_0_[6]\,
      R => SR(0)
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[7]_i_1_n_0\,
      Q => \count_reg_n_0_[7]\,
      R => SR(0)
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[8]_i_1_n_0\,
      Q => \count_reg_n_0_[8]\,
      R => SR(0)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count,
      D => \count[9]_i_1_n_0\,
      Q => \count_reg_n_0_[9]\,
      R => SR(0)
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[0]\,
      Q => data_out(0),
      R => SR(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[1]\,
      Q => data_out(1),
      R => SR(0)
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[2]\,
      Q => data_out(2),
      R => SR(0)
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[3]\,
      Q => data_out(3),
      R => SR(0)
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[4]\,
      Q => data_out(4),
      R => SR(0)
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[5]\,
      Q => data_out(5),
      R => SR(0)
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[6]\,
      Q => data_out(6),
      R => SR(0)
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_i_1_n_0,
      D => \data_shift_reg_n_0_[7]\,
      Q => data_out(7),
      R => SR(0)
    );
\data_shift[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[0]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[0]\,
      O => \data_shift[0]_i_1_n_0\
    );
\data_shift[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[0]_i_2_n_0\
    );
\data_shift[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[1]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[1]\,
      O => \data_shift[1]_i_1_n_0\
    );
\data_shift[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[1]_i_2_n_0\
    );
\data_shift[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[2]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[2]\,
      O => \data_shift[2]_i_1_n_0\
    );
\data_shift[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[2]_i_2_n_0\
    );
\data_shift[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[3]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[3]\,
      O => \data_shift[3]_i_1_n_0\
    );
\data_shift[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[3]_i_2_n_0\
    );
\data_shift[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[4]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[4]\,
      O => \data_shift[4]_i_1_n_0\
    );
\data_shift[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[4]_i_2_n_0\
    );
\data_shift[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[5]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[5]\,
      O => \data_shift[5]_i_1_n_0\
    );
\data_shift[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[5]_i_2_n_0\
    );
\data_shift[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[6]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[6]\,
      O => \data_shift[6]_i_1_n_0\
    );
\data_shift[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[6]_i_2_n_0\
    );
\data_shift[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_sync,
      I1 => count,
      I2 => \state__0\(0),
      I3 => \data_shift[7]_i_2_n_0\,
      I4 => \data_shift_reg_n_0_[7]\,
      O => \data_shift[7]_i_1_n_0\
    );
\data_shift[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => state1,
      I4 => \state__0\(1),
      O => \data_shift[7]_i_2_n_0\
    );
\data_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[0]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[0]\,
      R => SR(0)
    );
\data_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[1]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[1]\,
      R => SR(0)
    );
\data_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[2]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[2]\,
      R => SR(0)
    );
\data_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[3]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[3]\,
      R => SR(0)
    );
\data_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[4]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[4]\,
      R => SR(0)
    );
\data_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[5]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[5]\,
      R => SR(0)
    );
\data_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[6]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[6]\,
      R => SR(0)
    );
\data_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[7]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[7]\,
      R => SR(0)
    );
framing_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => state1,
      I1 => rx_sync,
      I2 => count,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => framing_error_i_1_n_0
    );
framing_error_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => framing_error_i_1_n_0,
      Q => \^framing_error\,
      R => SR(0)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000090"
    )
        port map (
      I0 => \count_reg_n_0_[12]\,
      I1 => state10_in(11),
      I2 => \state0_inferred__0/i__carry__0_0\(0),
      I3 => \count_reg_n_0_[14]\,
      I4 => \count_reg_n_0_[13]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => \count_reg_n_0_[12]\,
      I1 => \state1_inferred__0/i__carry__0_0\(11),
      I2 => CO(0),
      I3 => \count_reg_n_0_[14]\,
      I4 => \state1_inferred__0/i__carry__0_0\(12),
      I5 => \count_reg_n_0_[13]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg_n_0_[9]\,
      I1 => state10_in(8),
      I2 => state10_in(10),
      I3 => \count_reg_n_0_[11]\,
      I4 => state10_in(9),
      I5 => \count_reg_n_0_[10]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg_n_0_[9]\,
      I1 => \state1_inferred__0/i__carry__0_0\(8),
      I2 => \state1_inferred__0/i__carry__0_0\(10),
      I3 => \count_reg_n_0_[11]\,
      I4 => \state1_inferred__0/i__carry__0_0\(9),
      I5 => \count_reg_n_0_[10]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => state10_in(5),
      I2 => state10_in(7),
      I3 => \count_reg_n_0_[8]\,
      I4 => state10_in(6),
      I5 => \count_reg_n_0_[7]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \state1_inferred__0/i__carry__0_0\(5),
      I2 => \state1_inferred__0/i__carry__0_0\(7),
      I3 => \count_reg_n_0_[8]\,
      I4 => \state1_inferred__0/i__carry__0_0\(6),
      I5 => \count_reg_n_0_[7]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => state10_in(2),
      I2 => state10_in(4),
      I3 => \count_reg_n_0_[5]\,
      I4 => state10_in(3),
      I5 => \count_reg_n_0_[4]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \state1_inferred__0/i__carry__0_0\(2),
      I2 => \state1_inferred__0/i__carry__0_0\(4),
      I3 => \count_reg_n_0_[5]\,
      I4 => \state1_inferred__0/i__carry__0_0\(3),
      I5 => \count_reg_n_0_[4]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \state0_inferred__0/i__carry_0\(1),
      I2 => state10_in(1),
      I3 => \count_reg_n_0_[2]\,
      I4 => state10_in(0),
      I5 => \count_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \state0_inferred__0/i__carry_0\(0),
      I2 => \state1_inferred__0/i__carry__0_0\(1),
      I3 => \count_reg_n_0_[2]\,
      I4 => \state1_inferred__0/i__carry__0_0\(0),
      I5 => \count_reg_n_0_[1]\,
      O => \i__carry_i_4__0_n_0\
    );
memory_reg_0_63_0_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(0),
      I1 => \^framing_error\,
      O => p_1_in(0)
    );
memory_reg_0_63_0_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(1),
      I1 => \^framing_error\,
      O => p_1_in(1)
    );
memory_reg_0_63_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(2),
      I1 => \^framing_error\,
      O => p_1_in(2)
    );
memory_reg_0_63_3_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(3),
      I1 => \^framing_error\,
      O => p_1_in(3)
    );
memory_reg_0_63_3_5_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(4),
      I1 => \^framing_error\,
      O => p_1_in(4)
    );
memory_reg_0_63_3_5_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(5),
      I1 => \^framing_error\,
      O => p_1_in(5)
    );
memory_reg_0_63_6_8_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(6),
      I1 => \^framing_error\,
      O => p_1_in(6)
    );
memory_reg_0_63_6_8_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out(7),
      I1 => \^framing_error\,
      O => p_1_in(7)
    );
\occupancy[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \write_pointer_reg[9]\,
      I1 => \^framing_error\,
      I2 => \^valid\,
      O => framing_error_reg_0(0)
    );
rx_meta_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => rx,
      Q => rx_meta,
      S => rst
    );
rx_sync_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => rx_meta,
      Q => rx_sync,
      S => rst
    );
\state0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state0_inferred__0/i__carry_n_0\,
      CO(2) => \state0_inferred__0/i__carry_n_1\,
      CO(1) => \state0_inferred__0/i__carry_n_2\,
      CO(0) => \state0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\state0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => state0,
      CO(0) => \state0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => S(0),
      S(0) => \i__carry__0_i_2_n_0\
    );
\state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state1_inferred__0/i__carry_n_0\,
      CO(2) => \state1_inferred__0/i__carry_n_1\,
      CO(1) => \state1_inferred__0/i__carry_n_2\,
      CO(0) => \state1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\state1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_state1_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => state1,
      CO(0) => \state1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \count_reg[0]_0\(0),
      S(0) => \i__carry__0_i_2__0_n_0\
    );
valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => state1,
      I1 => rx_sync,
      I2 => count,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => valid_i_1_n_0
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_i_1_n_0,
      Q => \^valid\,
      R => SR(0)
    );
\write_pointer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \write_pointer_reg[9]\,
      I1 => \^framing_error\,
      I2 => \^valid\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_system_uart_diag_baud_core_0_0_uart_diag_baud_core is
  port (
    status : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \baud_code_reg[2]\ : out STD_LOGIC;
    \baud_code_reg[0]\ : out STD_LOGIC;
    \baud_code_reg[1]\ : out STD_LOGIC;
    \occupancy_reg[3]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx : in STD_LOGIC;
    command : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_system_uart_diag_baud_core_0_0_uart_diag_baud_core : entity is "uart_diag_baud_core";
end uart_system_uart_diag_baud_core_0_0_uart_diag_baud_core;

architecture STRUCTURE of uart_system_uart_diag_baud_core_0_0_uart_diag_baud_core is
  signal clocks_per_bit : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal event_fifo_n_24 : STD_LOGIC;
  signal event_fifo_n_28 : STD_LOGIC;
  signal event_fifo_n_44 : STD_LOGIC;
  signal event_fifo_n_57 : STD_LOGIC;
  signal event_fifo_n_58 : STD_LOGIC;
  signal event_fifo_n_59 : STD_LOGIC;
  signal framing_error : STD_LOGIC;
  signal push_accepted : STD_LOGIC;
  signal state10_in : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal state2 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal uart_receiver_n_10 : STD_LOGIC;
  signal uart_receiver_n_12 : STD_LOGIC;
  signal uart_receiver_n_2 : STD_LOGIC;
  signal uart_receiver_n_3 : STD_LOGIC;
  signal uart_receiver_n_4 : STD_LOGIC;
  signal uart_receiver_n_5 : STD_LOGIC;
  signal uart_receiver_n_6 : STD_LOGIC;
  signal uart_receiver_n_7 : STD_LOGIC;
  signal uart_receiver_n_8 : STD_LOGIC;
  signal uart_receiver_n_9 : STD_LOGIC;
  signal valid : STD_LOGIC;
begin
event_fifo: entity work.uart_system_uart_diag_baud_core_0_0_uart_baud_event_fifo
     port map (
      CO(0) => event_fifo_n_44,
      DI(0) => \baud_code_reg[2]\,
      E(0) => push_accepted,
      Q(10 downto 0) => status(10 downto 0),
      S(0) => event_fifo_n_58,
      ack_toggle_reg_0 => \occupancy_reg[3]\(11),
      \baud_code_reg[0]_0\ => \baud_code_reg[0]\,
      \baud_code_reg[1]_0\ => \baud_code_reg[1]\,
      \baud_code_reg[1]_1\(12 downto 0) => state2(13 downto 1),
      \baud_code_reg[2]_0\(1 downto 0) => clocks_per_bit(1 downto 0),
      clk => clk,
      command(5 downto 0) => command(5 downto 0),
      command_2_sp_1 => event_fifo_n_24,
      \count_reg[15]\(0) => event_fifo_n_59,
      framing_error => framing_error,
      \i__carry_i_5__0_0\(0) => event_fifo_n_57,
      \occupancy_reg[3]_0\(11) => \occupancy_reg[3]\(12),
      \occupancy_reg[3]_0\(10 downto 0) => \occupancy_reg[3]\(10 downto 0),
      \occupancy_reg[4]_0\(0) => uart_receiver_n_12,
      p_1_in(7) => uart_receiver_n_3,
      p_1_in(6) => uart_receiver_n_4,
      p_1_in(5) => uart_receiver_n_5,
      p_1_in(4) => uart_receiver_n_6,
      p_1_in(3) => uart_receiver_n_7,
      p_1_in(2) => uart_receiver_n_8,
      p_1_in(1) => uart_receiver_n_9,
      p_1_in(0) => uart_receiver_n_10,
      rst => rst,
      rst_0 => event_fifo_n_28,
      state10_in(11 downto 0) => state10_in(12 downto 1),
      \state1_inferred__0/i__carry__0\(0) => uart_receiver_n_2,
      valid => valid
    );
uart_receiver: entity work.uart_system_uart_diag_baud_core_0_0_uart_rx_baud
     port map (
      CO(0) => event_fifo_n_44,
      E(0) => push_accepted,
      Q(0) => uart_receiver_n_2,
      S(0) => event_fifo_n_58,
      SR(0) => event_fifo_n_28,
      clk => clk,
      \count_reg[0]_0\(0) => event_fifo_n_59,
      framing_error => framing_error,
      framing_error_reg_0(0) => uart_receiver_n_12,
      p_1_in(7) => uart_receiver_n_3,
      p_1_in(6) => uart_receiver_n_4,
      p_1_in(5) => uart_receiver_n_5,
      p_1_in(4) => uart_receiver_n_6,
      p_1_in(3) => uart_receiver_n_7,
      p_1_in(2) => uart_receiver_n_8,
      p_1_in(1) => uart_receiver_n_9,
      p_1_in(0) => uart_receiver_n_10,
      rst => rst,
      rx => rx,
      \state0_inferred__0/i__carry_0\(1 downto 0) => clocks_per_bit(1 downto 0),
      \state0_inferred__0/i__carry__0_0\(0) => event_fifo_n_57,
      state10_in(11 downto 0) => state10_in(12 downto 1),
      \state1_inferred__0/i__carry__0_0\(12 downto 0) => state2(13 downto 1),
      valid => valid,
      \write_pointer_reg[9]\ => event_fifo_n_24
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_system_uart_diag_baud_core_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx : in STD_LOGIC;
    command : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_system_uart_diag_baud_core_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_system_uart_diag_baud_core_0_0 : entity is "uart_system_uart_diag_baud_core_0_0,uart_diag_baud_core,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uart_system_uart_diag_baud_core_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uart_system_uart_diag_baud_core_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uart_system_uart_diag_baud_core_0_0 : entity is "uart_diag_baud_core,Vivado 2023.2";
end uart_system_uart_diag_baud_core_0_0;

architecture STRUCTURE of uart_system_uart_diag_baud_core_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  status(31) <= \<const1>\;
  status(30) <= \<const0>\;
  status(29) <= \<const1>\;
  status(28) <= \<const1>\;
  status(27) <= \<const0>\;
  status(26 downto 0) <= \^status\(26 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.uart_system_uart_diag_baud_core_0_0_uart_diag_baud_core
     port map (
      \baud_code_reg[0]\ => \^status\(24),
      \baud_code_reg[1]\ => \^status\(25),
      \baud_code_reg[2]\ => \^status\(26),
      clk => clk,
      command(5 downto 0) => command(5 downto 0),
      \occupancy_reg[3]\(12 downto 0) => \^status\(12 downto 0),
      rst => rst,
      rx => rx,
      status(10 downto 0) => \^status\(23 downto 13)
    );
end STRUCTURE;
