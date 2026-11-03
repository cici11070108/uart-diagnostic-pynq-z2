-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Oct 28 08:52:23 2026
-- Host        : cici-legion running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_system_uart_event_fifo_0_0_sim_netlist.vhdl
-- Design      : uart_system_uart_event_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_event_fifo is
  port (
    status : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \occupancy_reg[3]_0\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    valid_in : in STD_LOGIC;
    framing_error_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    command : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_event_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_event_fifo is
  signal ack_toggle_i_1_n_0 : STD_LOGIC;
  signal head0 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal memory_reg_0_63_0_2_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_2_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_3_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_4_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_5_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_i_6_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal memory_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal memory_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal memory_reg_0_63_3_5_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_63_3_5_i_2_n_0 : STD_LOGIC;
  signal memory_reg_0_63_3_5_i_3_n_0 : STD_LOGIC;
  signal memory_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal memory_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal memory_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal memory_reg_0_63_6_8_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_63_6_8_i_2_n_0 : STD_LOGIC;
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
  signal occupancy : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \occupancy[10]_i_2_n_0\ : STD_LOGIC;
  signal \occupancy[10]_i_4_n_0\ : STD_LOGIC;
  signal \occupancy[10]_i_5_n_0\ : STD_LOGIC;
  signal \occupancy[10]_i_6_n_0\ : STD_LOGIC;
  signal \occupancy[10]_i_7_n_0\ : STD_LOGIC;
  signal \occupancy[4]_i_2_n_0\ : STD_LOGIC;
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
  signal \^occupancy_reg[3]_0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
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
  signal overflow_i_3_n_0 : STD_LOGIC;
  signal overflow_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pop_accepted : STD_LOGIC;
  signal push_accepted : STD_LOGIC;
  signal \read_pointer[9]_i_3_n_0\ : STD_LOGIC;
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^status\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \status[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[0]_INST_0_i_6_n_0\ : STD_LOGIC;
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
  signal \status[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \status[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \status[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_3_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_4_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
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
  attribute SOFT_HLUTNM of ack_toggle_i_1 : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg_0_63_0_2 : label is 9216;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg_0_63_0_2 : label is "inst/memory_reg_0_63_0_2";
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
  attribute SOFT_HLUTNM of memory_reg_0_63_0_2_i_6 : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_0_63_3_5 : label is "inst/memory_reg_0_63_3_5";
  attribute RTL_RAM_TYPE of memory_reg_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_3_5 : label is 63;
  attribute ram_offset of memory_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_0_63_6_8 : label is "inst/memory_reg_0_63_6_8";
  attribute RTL_RAM_TYPE of memory_reg_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_6_8 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_6_8 : label is 63;
  attribute ram_offset of memory_reg_0_63_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_128_191_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_128_191_0_2 : label is "inst/memory_reg_128_191_0_2";
  attribute RTL_RAM_TYPE of memory_reg_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_128_191_0_2 : label is 128;
  attribute ram_addr_end of memory_reg_128_191_0_2 : label is 191;
  attribute ram_offset of memory_reg_128_191_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_128_191_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_128_191_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_128_191_3_5 : label is "inst/memory_reg_128_191_3_5";
  attribute RTL_RAM_TYPE of memory_reg_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_128_191_3_5 : label is 128;
  attribute ram_addr_end of memory_reg_128_191_3_5 : label is 191;
  attribute ram_offset of memory_reg_128_191_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_128_191_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_128_191_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_128_191_6_8 : label is "inst/memory_reg_128_191_6_8";
  attribute RTL_RAM_TYPE of memory_reg_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_128_191_6_8 : label is 128;
  attribute ram_addr_end of memory_reg_128_191_6_8 : label is 191;
  attribute ram_offset of memory_reg_128_191_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_128_191_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_192_255_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_192_255_0_2 : label is "inst/memory_reg_192_255_0_2";
  attribute RTL_RAM_TYPE of memory_reg_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_192_255_0_2 : label is 192;
  attribute ram_addr_end of memory_reg_192_255_0_2 : label is 255;
  attribute ram_offset of memory_reg_192_255_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_192_255_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_192_255_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_192_255_3_5 : label is "inst/memory_reg_192_255_3_5";
  attribute RTL_RAM_TYPE of memory_reg_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_192_255_3_5 : label is 192;
  attribute ram_addr_end of memory_reg_192_255_3_5 : label is 255;
  attribute ram_offset of memory_reg_192_255_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_192_255_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_192_255_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_192_255_6_8 : label is "inst/memory_reg_192_255_6_8";
  attribute RTL_RAM_TYPE of memory_reg_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_192_255_6_8 : label is 192;
  attribute ram_addr_end of memory_reg_192_255_6_8 : label is 255;
  attribute ram_offset of memory_reg_192_255_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_192_255_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_256_319_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_256_319_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_256_319_0_2 : label is "inst/memory_reg_256_319_0_2";
  attribute RTL_RAM_TYPE of memory_reg_256_319_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_256_319_0_2 : label is 256;
  attribute ram_addr_end of memory_reg_256_319_0_2 : label is 319;
  attribute ram_offset of memory_reg_256_319_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_256_319_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_256_319_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_256_319_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_256_319_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_256_319_3_5 : label is "inst/memory_reg_256_319_3_5";
  attribute RTL_RAM_TYPE of memory_reg_256_319_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_256_319_3_5 : label is 256;
  attribute ram_addr_end of memory_reg_256_319_3_5 : label is 319;
  attribute ram_offset of memory_reg_256_319_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_256_319_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_256_319_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_256_319_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_256_319_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_256_319_6_8 : label is "inst/memory_reg_256_319_6_8";
  attribute RTL_RAM_TYPE of memory_reg_256_319_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_256_319_6_8 : label is 256;
  attribute ram_addr_end of memory_reg_256_319_6_8 : label is 319;
  attribute ram_offset of memory_reg_256_319_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_256_319_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_256_319_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_320_383_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_320_383_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_320_383_0_2 : label is "inst/memory_reg_320_383_0_2";
  attribute RTL_RAM_TYPE of memory_reg_320_383_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_320_383_0_2 : label is 320;
  attribute ram_addr_end of memory_reg_320_383_0_2 : label is 383;
  attribute ram_offset of memory_reg_320_383_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_320_383_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_320_383_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_320_383_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_320_383_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_320_383_3_5 : label is "inst/memory_reg_320_383_3_5";
  attribute RTL_RAM_TYPE of memory_reg_320_383_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_320_383_3_5 : label is 320;
  attribute ram_addr_end of memory_reg_320_383_3_5 : label is 383;
  attribute ram_offset of memory_reg_320_383_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_320_383_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_320_383_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_320_383_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_320_383_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_320_383_6_8 : label is "inst/memory_reg_320_383_6_8";
  attribute RTL_RAM_TYPE of memory_reg_320_383_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_320_383_6_8 : label is 320;
  attribute ram_addr_end of memory_reg_320_383_6_8 : label is 383;
  attribute ram_offset of memory_reg_320_383_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_320_383_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_320_383_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_384_447_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_384_447_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_384_447_0_2 : label is "inst/memory_reg_384_447_0_2";
  attribute RTL_RAM_TYPE of memory_reg_384_447_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_384_447_0_2 : label is 384;
  attribute ram_addr_end of memory_reg_384_447_0_2 : label is 447;
  attribute ram_offset of memory_reg_384_447_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_384_447_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_384_447_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_384_447_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_384_447_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_384_447_3_5 : label is "inst/memory_reg_384_447_3_5";
  attribute RTL_RAM_TYPE of memory_reg_384_447_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_384_447_3_5 : label is 384;
  attribute ram_addr_end of memory_reg_384_447_3_5 : label is 447;
  attribute ram_offset of memory_reg_384_447_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_384_447_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_384_447_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_384_447_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_384_447_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_384_447_6_8 : label is "inst/memory_reg_384_447_6_8";
  attribute RTL_RAM_TYPE of memory_reg_384_447_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_384_447_6_8 : label is 384;
  attribute ram_addr_end of memory_reg_384_447_6_8 : label is 447;
  attribute ram_offset of memory_reg_384_447_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_384_447_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_384_447_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_448_511_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_448_511_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_448_511_0_2 : label is "inst/memory_reg_448_511_0_2";
  attribute RTL_RAM_TYPE of memory_reg_448_511_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_448_511_0_2 : label is 448;
  attribute ram_addr_end of memory_reg_448_511_0_2 : label is 511;
  attribute ram_offset of memory_reg_448_511_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_448_511_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_448_511_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_448_511_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_448_511_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_448_511_3_5 : label is "inst/memory_reg_448_511_3_5";
  attribute RTL_RAM_TYPE of memory_reg_448_511_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_448_511_3_5 : label is 448;
  attribute ram_addr_end of memory_reg_448_511_3_5 : label is 511;
  attribute ram_offset of memory_reg_448_511_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_448_511_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_448_511_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_448_511_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_448_511_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_448_511_6_8 : label is "inst/memory_reg_448_511_6_8";
  attribute RTL_RAM_TYPE of memory_reg_448_511_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_448_511_6_8 : label is 448;
  attribute ram_addr_end of memory_reg_448_511_6_8 : label is 511;
  attribute ram_offset of memory_reg_448_511_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_448_511_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_448_511_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_512_575_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_512_575_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_512_575_0_2 : label is "inst/memory_reg_512_575_0_2";
  attribute RTL_RAM_TYPE of memory_reg_512_575_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_512_575_0_2 : label is 512;
  attribute ram_addr_end of memory_reg_512_575_0_2 : label is 575;
  attribute ram_offset of memory_reg_512_575_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_512_575_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_512_575_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_512_575_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_512_575_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_512_575_3_5 : label is "inst/memory_reg_512_575_3_5";
  attribute RTL_RAM_TYPE of memory_reg_512_575_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_512_575_3_5 : label is 512;
  attribute ram_addr_end of memory_reg_512_575_3_5 : label is 575;
  attribute ram_offset of memory_reg_512_575_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_512_575_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_512_575_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_512_575_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_512_575_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_512_575_6_8 : label is "inst/memory_reg_512_575_6_8";
  attribute RTL_RAM_TYPE of memory_reg_512_575_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_512_575_6_8 : label is 512;
  attribute ram_addr_end of memory_reg_512_575_6_8 : label is 575;
  attribute ram_offset of memory_reg_512_575_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_512_575_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_512_575_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_576_639_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_576_639_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_576_639_0_2 : label is "inst/memory_reg_576_639_0_2";
  attribute RTL_RAM_TYPE of memory_reg_576_639_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_576_639_0_2 : label is 576;
  attribute ram_addr_end of memory_reg_576_639_0_2 : label is 639;
  attribute ram_offset of memory_reg_576_639_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_576_639_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_576_639_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_576_639_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_576_639_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_576_639_3_5 : label is "inst/memory_reg_576_639_3_5";
  attribute RTL_RAM_TYPE of memory_reg_576_639_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_576_639_3_5 : label is 576;
  attribute ram_addr_end of memory_reg_576_639_3_5 : label is 639;
  attribute ram_offset of memory_reg_576_639_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_576_639_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_576_639_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_576_639_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_576_639_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_576_639_6_8 : label is "inst/memory_reg_576_639_6_8";
  attribute RTL_RAM_TYPE of memory_reg_576_639_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_576_639_6_8 : label is 576;
  attribute ram_addr_end of memory_reg_576_639_6_8 : label is 639;
  attribute ram_offset of memory_reg_576_639_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_576_639_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_576_639_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_640_703_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_640_703_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_640_703_0_2 : label is "inst/memory_reg_640_703_0_2";
  attribute RTL_RAM_TYPE of memory_reg_640_703_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_640_703_0_2 : label is 640;
  attribute ram_addr_end of memory_reg_640_703_0_2 : label is 703;
  attribute ram_offset of memory_reg_640_703_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_640_703_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_640_703_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_640_703_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_640_703_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_640_703_3_5 : label is "inst/memory_reg_640_703_3_5";
  attribute RTL_RAM_TYPE of memory_reg_640_703_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_640_703_3_5 : label is 640;
  attribute ram_addr_end of memory_reg_640_703_3_5 : label is 703;
  attribute ram_offset of memory_reg_640_703_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_640_703_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_640_703_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_640_703_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_640_703_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_640_703_6_8 : label is "inst/memory_reg_640_703_6_8";
  attribute RTL_RAM_TYPE of memory_reg_640_703_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_640_703_6_8 : label is 640;
  attribute ram_addr_end of memory_reg_640_703_6_8 : label is 703;
  attribute ram_offset of memory_reg_640_703_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_640_703_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_640_703_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_64_127_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_64_127_0_2 : label is "inst/memory_reg_64_127_0_2";
  attribute RTL_RAM_TYPE of memory_reg_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_64_127_0_2 : label is 64;
  attribute ram_addr_end of memory_reg_64_127_0_2 : label is 127;
  attribute ram_offset of memory_reg_64_127_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_64_127_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_64_127_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_64_127_3_5 : label is "inst/memory_reg_64_127_3_5";
  attribute RTL_RAM_TYPE of memory_reg_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_64_127_3_5 : label is 64;
  attribute ram_addr_end of memory_reg_64_127_3_5 : label is 127;
  attribute ram_offset of memory_reg_64_127_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_64_127_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_64_127_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_64_127_6_8 : label is "inst/memory_reg_64_127_6_8";
  attribute RTL_RAM_TYPE of memory_reg_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_64_127_6_8 : label is 64;
  attribute ram_addr_end of memory_reg_64_127_6_8 : label is 127;
  attribute ram_offset of memory_reg_64_127_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_64_127_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_704_767_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_704_767_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_704_767_0_2 : label is "inst/memory_reg_704_767_0_2";
  attribute RTL_RAM_TYPE of memory_reg_704_767_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_704_767_0_2 : label is 704;
  attribute ram_addr_end of memory_reg_704_767_0_2 : label is 767;
  attribute ram_offset of memory_reg_704_767_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_704_767_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_704_767_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_704_767_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_704_767_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_704_767_3_5 : label is "inst/memory_reg_704_767_3_5";
  attribute RTL_RAM_TYPE of memory_reg_704_767_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_704_767_3_5 : label is 704;
  attribute ram_addr_end of memory_reg_704_767_3_5 : label is 767;
  attribute ram_offset of memory_reg_704_767_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_704_767_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_704_767_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_704_767_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_704_767_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_704_767_6_8 : label is "inst/memory_reg_704_767_6_8";
  attribute RTL_RAM_TYPE of memory_reg_704_767_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_704_767_6_8 : label is 704;
  attribute ram_addr_end of memory_reg_704_767_6_8 : label is 767;
  attribute ram_offset of memory_reg_704_767_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_704_767_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_704_767_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_768_831_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_768_831_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_768_831_0_2 : label is "inst/memory_reg_768_831_0_2";
  attribute RTL_RAM_TYPE of memory_reg_768_831_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_768_831_0_2 : label is 768;
  attribute ram_addr_end of memory_reg_768_831_0_2 : label is 831;
  attribute ram_offset of memory_reg_768_831_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_768_831_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_768_831_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_768_831_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_768_831_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_768_831_3_5 : label is "inst/memory_reg_768_831_3_5";
  attribute RTL_RAM_TYPE of memory_reg_768_831_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_768_831_3_5 : label is 768;
  attribute ram_addr_end of memory_reg_768_831_3_5 : label is 831;
  attribute ram_offset of memory_reg_768_831_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_768_831_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_768_831_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_768_831_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_768_831_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_768_831_6_8 : label is "inst/memory_reg_768_831_6_8";
  attribute RTL_RAM_TYPE of memory_reg_768_831_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_768_831_6_8 : label is 768;
  attribute ram_addr_end of memory_reg_768_831_6_8 : label is 831;
  attribute ram_offset of memory_reg_768_831_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_768_831_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_768_831_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_832_895_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_832_895_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_832_895_0_2 : label is "inst/memory_reg_832_895_0_2";
  attribute RTL_RAM_TYPE of memory_reg_832_895_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_832_895_0_2 : label is 832;
  attribute ram_addr_end of memory_reg_832_895_0_2 : label is 895;
  attribute ram_offset of memory_reg_832_895_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_832_895_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_832_895_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_832_895_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_832_895_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_832_895_3_5 : label is "inst/memory_reg_832_895_3_5";
  attribute RTL_RAM_TYPE of memory_reg_832_895_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_832_895_3_5 : label is 832;
  attribute ram_addr_end of memory_reg_832_895_3_5 : label is 895;
  attribute ram_offset of memory_reg_832_895_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_832_895_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_832_895_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_832_895_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_832_895_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_832_895_6_8 : label is "inst/memory_reg_832_895_6_8";
  attribute RTL_RAM_TYPE of memory_reg_832_895_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_832_895_6_8 : label is 832;
  attribute ram_addr_end of memory_reg_832_895_6_8 : label is 895;
  attribute ram_offset of memory_reg_832_895_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_832_895_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_832_895_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_896_959_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_896_959_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_896_959_0_2 : label is "inst/memory_reg_896_959_0_2";
  attribute RTL_RAM_TYPE of memory_reg_896_959_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_896_959_0_2 : label is 896;
  attribute ram_addr_end of memory_reg_896_959_0_2 : label is 959;
  attribute ram_offset of memory_reg_896_959_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_896_959_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_896_959_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_896_959_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_896_959_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_896_959_3_5 : label is "inst/memory_reg_896_959_3_5";
  attribute RTL_RAM_TYPE of memory_reg_896_959_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_896_959_3_5 : label is 896;
  attribute ram_addr_end of memory_reg_896_959_3_5 : label is 959;
  attribute ram_offset of memory_reg_896_959_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_896_959_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_896_959_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_896_959_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_896_959_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_896_959_6_8 : label is "inst/memory_reg_896_959_6_8";
  attribute RTL_RAM_TYPE of memory_reg_896_959_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_896_959_6_8 : label is 896;
  attribute ram_addr_end of memory_reg_896_959_6_8 : label is 959;
  attribute ram_offset of memory_reg_896_959_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_896_959_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_896_959_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_960_1023_0_2 : label is "";
  attribute RTL_RAM_BITS of memory_reg_960_1023_0_2 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_960_1023_0_2 : label is "inst/memory_reg_960_1023_0_2";
  attribute RTL_RAM_TYPE of memory_reg_960_1023_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_960_1023_0_2 : label is 960;
  attribute ram_addr_end of memory_reg_960_1023_0_2 : label is 1023;
  attribute ram_offset of memory_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_begin of memory_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_end of memory_reg_960_1023_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_960_1023_3_5 : label is "";
  attribute RTL_RAM_BITS of memory_reg_960_1023_3_5 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_960_1023_3_5 : label is "inst/memory_reg_960_1023_3_5";
  attribute RTL_RAM_TYPE of memory_reg_960_1023_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_960_1023_3_5 : label is 960;
  attribute ram_addr_end of memory_reg_960_1023_3_5 : label is 1023;
  attribute ram_offset of memory_reg_960_1023_3_5 : label is 0;
  attribute ram_slice_begin of memory_reg_960_1023_3_5 : label is 3;
  attribute ram_slice_end of memory_reg_960_1023_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_960_1023_6_8 : label is "";
  attribute RTL_RAM_BITS of memory_reg_960_1023_6_8 : label is 9216;
  attribute RTL_RAM_NAME of memory_reg_960_1023_6_8 : label is "inst/memory_reg_960_1023_6_8";
  attribute RTL_RAM_TYPE of memory_reg_960_1023_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_960_1023_6_8 : label is 960;
  attribute ram_addr_end of memory_reg_960_1023_6_8 : label is 1023;
  attribute ram_offset of memory_reg_960_1023_6_8 : label is 0;
  attribute ram_slice_begin of memory_reg_960_1023_6_8 : label is 6;
  attribute ram_slice_end of memory_reg_960_1023_6_8 : label is 8;
  attribute SOFT_HLUTNM of \occupancy[10]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \occupancy[10]_i_5\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \occupancy_reg[10]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \occupancy_reg[10]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \occupancy_reg[4]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \occupancy_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \occupancy_reg[8]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \occupancy_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of overflow_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of overflow_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_pointer[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_pointer[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \status[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \status[12]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \status[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \status[8]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_pointer[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_pointer[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_pointer[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_pointer[9]_i_2\ : label is "soft_lutpair2";
begin
  \occupancy_reg[3]_0\(12 downto 0) <= \^occupancy_reg[3]_0\(12 downto 0);
  status(10 downto 0) <= \^status\(10 downto 0);
ack_toggle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => command(0),
      I1 => rst,
      O => ack_toggle_i_1_n_0
    );
ack_toggle_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ack_toggle_i_1_n_0,
      Q => \^occupancy_reg[3]_0\(11),
      R => '0'
    );
memory_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
      DID => '0',
      DOA => memory_reg_0_63_0_2_n_0,
      DOB => memory_reg_0_63_0_2_n_1,
      DOC => memory_reg_0_63_0_2_n_2,
      DOD => NLW_memory_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_0_63_0_2_i_4_n_0
    );
memory_reg_0_63_0_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(0),
      I1 => framing_error_in,
      O => memory_reg_0_63_0_2_i_1_n_0
    );
memory_reg_0_63_0_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(1),
      I1 => framing_error_in,
      O => memory_reg_0_63_0_2_i_2_n_0
    );
memory_reg_0_63_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(2),
      I1 => framing_error_in,
      O => memory_reg_0_63_0_2_i_3_n_0
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
      INIT => X"A2A2A2A2A2A222A2"
    )
        port map (
      I0 => memory_reg_0_63_0_2_i_6_n_0,
      I1 => \occupancy[10]_i_5_n_0\,
      I2 => overflow_i_3_n_0,
      I3 => \^status\(10),
      I4 => \status[9]_INST_0_i_1_n_0\,
      I5 => overflow_i_4_n_0,
      O => memory_reg_0_63_0_2_i_5_n_0
    );
memory_reg_0_63_0_2_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => framing_error_in,
      I1 => valid_in,
      I2 => rst,
      O => memory_reg_0_63_0_2_i_6_n_0
    );
memory_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
      DID => '0',
      DOA => memory_reg_0_63_3_5_n_0,
      DOB => memory_reg_0_63_3_5_n_1,
      DOC => memory_reg_0_63_3_5_n_2,
      DOD => NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_0_63_0_2_i_4_n_0
    );
memory_reg_0_63_3_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(3),
      I1 => framing_error_in,
      O => memory_reg_0_63_3_5_i_1_n_0
    );
memory_reg_0_63_3_5_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(4),
      I1 => framing_error_in,
      O => memory_reg_0_63_3_5_i_2_n_0
    );
memory_reg_0_63_3_5_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(5),
      I1 => framing_error_in,
      O => memory_reg_0_63_3_5_i_3_n_0
    );
memory_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
      DID => '0',
      DOA => memory_reg_0_63_6_8_n_0,
      DOB => memory_reg_0_63_6_8_n_1,
      DOC => memory_reg_0_63_6_8_n_2,
      DOD => NLW_memory_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => memory_reg_0_63_0_2_i_4_n_0
    );
memory_reg_0_63_6_8_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(6),
      I1 => framing_error_in,
      O => memory_reg_0_63_6_8_i_1_n_0
    );
memory_reg_0_63_6_8_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(7),
      I1 => framing_error_in,
      O => memory_reg_0_63_6_8_i_2_n_0
    );
memory_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      DIA => memory_reg_0_63_0_2_i_1_n_0,
      DIB => memory_reg_0_63_0_2_i_2_n_0,
      DIC => memory_reg_0_63_0_2_i_3_n_0,
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
      DIA => memory_reg_0_63_3_5_i_1_n_0,
      DIB => memory_reg_0_63_3_5_i_2_n_0,
      DIC => memory_reg_0_63_3_5_i_3_n_0,
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
      DIA => memory_reg_0_63_6_8_i_1_n_0,
      DIB => memory_reg_0_63_6_8_i_2_n_0,
      DIC => framing_error_in,
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
      I0 => \^status\(0),
      O => occupancy(0)
    );
\occupancy[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABABAAA"
    )
        port map (
      I0 => rst,
      I1 => command(1),
      I2 => command(2),
      I3 => command(0),
      I4 => \^occupancy_reg[3]_0\(11),
      O => occupancy_0
    );
\occupancy[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE0E111E"
    )
        port map (
      I0 => valid_in,
      I1 => framing_error_in,
      I2 => \^status\(10),
      I3 => \occupancy[10]_i_4_n_0\,
      I4 => \occupancy[10]_i_5_n_0\,
      O => \occupancy[10]_i_2_n_0\
    );
\occupancy[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \status[9]_INST_0_i_1_n_0\,
      I1 => \^status\(4),
      I2 => \^status\(5),
      I3 => \^status\(2),
      I4 => \^status\(3),
      O => \occupancy[10]_i_4_n_0\
    );
\occupancy[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9FF"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => command(0),
      I2 => command(2),
      I3 => command(1),
      O => \occupancy[10]_i_5_n_0\
    );
\occupancy[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(9),
      I1 => \^status\(10),
      O => \occupancy[10]_i_6_n_0\
    );
\occupancy[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(8),
      I1 => \^status\(9),
      O => \occupancy[10]_i_7_n_0\
    );
\occupancy[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD0"
    )
        port map (
      I0 => \occupancy[10]_i_5_n_0\,
      I1 => \write_pointer[9]_i_3_n_0\,
      I2 => framing_error_in,
      I3 => valid_in,
      O => \occupancy[4]_i_2_n_0\
    );
\occupancy[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(4),
      O => \occupancy[4]_i_3_n_0\
    );
\occupancy[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(3),
      O => \occupancy[4]_i_4_n_0\
    );
\occupancy[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(2),
      O => \occupancy[4]_i_5_n_0\
    );
\occupancy[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A955A9A9"
    )
        port map (
      I0 => \^status\(1),
      I1 => valid_in,
      I2 => framing_error_in,
      I3 => \write_pointer[9]_i_3_n_0\,
      I4 => \occupancy[10]_i_5_n_0\,
      O => \occupancy[4]_i_6_n_0\
    );
\occupancy[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(7),
      I1 => \^status\(8),
      O => \occupancy[8]_i_2_n_0\
    );
\occupancy[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(6),
      I1 => \^status\(7),
      O => \occupancy[8]_i_3_n_0\
    );
\occupancy[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(5),
      I1 => \^status\(6),
      O => \occupancy[8]_i_4_n_0\
    );
\occupancy[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(5),
      O => \occupancy[8]_i_5_n_0\
    );
\occupancy_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(0),
      Q => \^status\(0),
      R => occupancy_0
    );
\occupancy_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(10),
      Q => \^status\(10),
      R => occupancy_0
    );
\occupancy_reg[10]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \occupancy_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_occupancy_reg[10]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \occupancy_reg[10]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^status\(8),
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
      Q => \^status\(1),
      R => occupancy_0
    );
\occupancy_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(2),
      Q => \^status\(2),
      R => occupancy_0
    );
\occupancy_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(3),
      Q => \^status\(3),
      R => occupancy_0
    );
\occupancy_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(4),
      Q => \^status\(4),
      R => occupancy_0
    );
\occupancy_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \occupancy_reg[4]_i_1_n_0\,
      CO(2) => \occupancy_reg[4]_i_1_n_1\,
      CO(1) => \occupancy_reg[4]_i_1_n_2\,
      CO(0) => \occupancy_reg[4]_i_1_n_3\,
      CYINIT => \^status\(0),
      DI(3 downto 1) => \^status\(3 downto 1),
      DI(0) => \occupancy[4]_i_2_n_0\,
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
      Q => \^status\(5),
      R => occupancy_0
    );
\occupancy_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(6),
      Q => \^status\(6),
      R => occupancy_0
    );
\occupancy_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(7),
      Q => \^status\(7),
      R => occupancy_0
    );
\occupancy_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \occupancy[10]_i_2_n_0\,
      D => occupancy(8),
      Q => \^status\(8),
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
      DI(3 downto 0) => \^status\(7 downto 4),
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
      Q => \^status\(9),
      R => occupancy_0
    );
overflow_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555111000000000"
    )
        port map (
      I0 => rst,
      I1 => overflow_i_2_n_0,
      I2 => valid_in,
      I3 => framing_error_in,
      I4 => \^occupancy_reg[3]_0\(10),
      I5 => overflow_i_3_n_0,
      O => overflow_i_1_n_0
    );
overflow_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^status\(10),
      I1 => \status[9]_INST_0_i_1_n_0\,
      I2 => overflow_i_4_n_0,
      I3 => \occupancy[10]_i_5_n_0\,
      O => overflow_i_2_n_0
    );
overflow_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF9F"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(11),
      I1 => command(0),
      I2 => command(2),
      I3 => command(1),
      O => overflow_i_3_n_0
    );
overflow_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(2),
      I2 => \^status\(5),
      I3 => \^status\(4),
      O => overflow_i_4_n_0
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
      INIT => X"00080800"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(9),
      I1 => command(1),
      I2 => command(2),
      I3 => command(0),
      I4 => \^occupancy_reg[3]_0\(11),
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
\status[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[0]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[0]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(0)
    );
\status[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[0]_INST_0_i_3_n_0\,
      I1 => \status[0]_INST_0_i_4_n_0\,
      O => \status[0]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[0]_INST_0_i_5_n_0\,
      I1 => \status[0]_INST_0_i_6_n_0\,
      O => \status[0]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[0]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[0]_INST_0_i_3_n_0\
    );
\status[0]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[0]_INST_0_i_4_n_0\
    );
\status[0]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[0]_INST_0_i_5_n_0\
    );
\status[0]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[0]_INST_0_i_6_n_0\
    );
\status[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^occupancy_reg[3]_0\(9),
      I1 => head0(8),
      O => \^occupancy_reg[3]_0\(12)
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
\status[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[1]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[1]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(1)
    );
\status[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[1]_INST_0_i_3_n_0\,
      I1 => \status[1]_INST_0_i_4_n_0\,
      O => \status[1]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[1]_INST_0_i_5_n_0\,
      I1 => \status[1]_INST_0_i_6_n_0\,
      O => \status[1]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[1]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[1]_INST_0_i_3_n_0\
    );
\status[1]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[1]_INST_0_i_4_n_0\
    );
\status[1]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[1]_INST_0_i_5_n_0\
    );
\status[1]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[1]_INST_0_i_6_n_0\
    );
\status[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[2]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[2]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(2)
    );
\status[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[2]_INST_0_i_3_n_0\,
      I1 => \status[2]_INST_0_i_4_n_0\,
      O => \status[2]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[2]_INST_0_i_5_n_0\,
      I1 => \status[2]_INST_0_i_6_n_0\,
      O => \status[2]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[2]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[2]_INST_0_i_3_n_0\
    );
\status[2]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[2]_INST_0_i_4_n_0\
    );
\status[2]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[2]_INST_0_i_5_n_0\
    );
\status[2]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[2]_INST_0_i_6_n_0\
    );
\status[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[3]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[3]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(3)
    );
\status[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[3]_INST_0_i_3_n_0\,
      I1 => \status[3]_INST_0_i_4_n_0\,
      O => \status[3]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[3]_INST_0_i_5_n_0\,
      I1 => \status[3]_INST_0_i_6_n_0\,
      O => \status[3]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[3]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[3]_INST_0_i_3_n_0\
    );
\status[3]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[3]_INST_0_i_4_n_0\
    );
\status[3]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[3]_INST_0_i_5_n_0\
    );
\status[3]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[3]_INST_0_i_6_n_0\
    );
\status[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[4]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[4]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(4)
    );
\status[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[4]_INST_0_i_3_n_0\,
      I1 => \status[4]_INST_0_i_4_n_0\,
      O => \status[4]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[4]_INST_0_i_5_n_0\,
      I1 => \status[4]_INST_0_i_6_n_0\,
      O => \status[4]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[4]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[4]_INST_0_i_3_n_0\
    );
\status[4]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[4]_INST_0_i_4_n_0\
    );
\status[4]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[4]_INST_0_i_5_n_0\
    );
\status[4]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[4]_INST_0_i_6_n_0\
    );
\status[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[5]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[5]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(5)
    );
\status[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[5]_INST_0_i_3_n_0\,
      I1 => \status[5]_INST_0_i_4_n_0\,
      O => \status[5]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[5]_INST_0_i_5_n_0\,
      I1 => \status[5]_INST_0_i_6_n_0\,
      O => \status[5]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[5]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[5]_INST_0_i_3_n_0\
    );
\status[5]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[5]_INST_0_i_4_n_0\
    );
\status[5]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[5]_INST_0_i_5_n_0\
    );
\status[5]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[5]_INST_0_i_6_n_0\
    );
\status[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[6]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[6]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(6)
    );
\status[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[6]_INST_0_i_3_n_0\,
      I1 => \status[6]_INST_0_i_4_n_0\,
      O => \status[6]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[6]_INST_0_i_5_n_0\,
      I1 => \status[6]_INST_0_i_6_n_0\,
      O => \status[6]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[6]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[6]_INST_0_i_3_n_0\
    );
\status[6]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[6]_INST_0_i_4_n_0\
    );
\status[6]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[6]_INST_0_i_5_n_0\
    );
\status[6]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[6]_INST_0_i_6_n_0\
    );
\status[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => head0(8),
      I1 => \^occupancy_reg[3]_0\(9),
      I2 => \status[7]_INST_0_i_1_n_0\,
      I3 => read_pointer_reg(9),
      I4 => \status[7]_INST_0_i_2_n_0\,
      O => \^occupancy_reg[3]_0\(7)
    );
\status[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[7]_INST_0_i_3_n_0\,
      I1 => \status[7]_INST_0_i_4_n_0\,
      O => \status[7]_INST_0_i_1_n_0\,
      S => read_pointer_reg(8)
    );
\status[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \status[7]_INST_0_i_5_n_0\,
      I1 => \status[7]_INST_0_i_6_n_0\,
      O => \status[7]_INST_0_i_2_n_0\,
      S => read_pointer_reg(8)
    );
\status[7]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \status[7]_INST_0_i_3_n_0\
    );
\status[7]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \status[7]_INST_0_i_4_n_0\
    );
\status[7]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \status[7]_INST_0_i_5_n_0\
    );
\status[7]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \status[7]_INST_0_i_6_n_0\
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
      I0 => \^status\(3),
      I1 => \^status\(2),
      I2 => \^status\(5),
      I3 => \^status\(4),
      I4 => \status[9]_INST_0_i_1_n_0\,
      I5 => \^status\(10),
      O => \^occupancy_reg[3]_0\(9)
    );
\status[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^status\(8),
      I1 => \^status\(9),
      I2 => \^status\(6),
      I3 => \^status\(7),
      I4 => \^status\(1),
      I5 => \^status\(0),
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
      I0 => \write_pointer[9]_i_4_n_0\,
      I1 => write_pointer_reg(6),
      O => \p_0_in__0\(6)
    );
\write_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => \write_pointer[9]_i_4_n_0\,
      I2 => write_pointer_reg(7),
      O => \p_0_in__0\(7)
    );
\write_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \write_pointer[9]_i_4_n_0\,
      I1 => write_pointer_reg(6),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(8),
      O => \p_0_in__0\(8)
    );
\write_pointer[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD0"
    )
        port map (
      I0 => \occupancy[10]_i_5_n_0\,
      I1 => \write_pointer[9]_i_3_n_0\,
      I2 => framing_error_in,
      I3 => valid_in,
      O => push_accepted
    );
\write_pointer[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \write_pointer[9]_i_4_n_0\,
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(6),
      I4 => write_pointer_reg(9),
      O => \p_0_in__0\(9)
    );
\write_pointer[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(2),
      I2 => \^status\(5),
      I3 => \^status\(4),
      I4 => \status[9]_INST_0_i_1_n_0\,
      I5 => \^status\(10),
      O => \write_pointer[9]_i_3_n_0\
    );
\write_pointer[9]_i_4\: unisim.vcomponents.LUT6
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
      O => \write_pointer[9]_i_4_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(0),
      Q => write_pointer_reg(0),
      R => occupancy_0
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(1),
      Q => write_pointer_reg(1),
      R => occupancy_0
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(2),
      Q => write_pointer_reg(2),
      R => occupancy_0
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(3),
      Q => write_pointer_reg(3),
      R => occupancy_0
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(4),
      Q => write_pointer_reg(4),
      R => occupancy_0
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(5),
      Q => write_pointer_reg(5),
      R => occupancy_0
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(6),
      Q => write_pointer_reg(6),
      R => occupancy_0
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(7),
      Q => write_pointer_reg(7),
      R => occupancy_0
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(8),
      Q => write_pointer_reg(8),
      R => occupancy_0
    );
\write_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => push_accepted,
      D => \p_0_in__0\(9),
      Q => write_pointer_reg(9),
      R => occupancy_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    framing_error_in : in STD_LOGIC;
    command : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_system_uart_event_fifo_0_0,uart_event_fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_event_fifo,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 23 downto 0 );
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
  status(28) <= \<const0>\;
  status(27) <= \<const0>\;
  status(26) <= \<const1>\;
  status(25) <= \<const0>\;
  status(24) <= \<const1>\;
  status(23 downto 0) <= \^status\(23 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_event_fifo
     port map (
      clk => clk,
      command(2 downto 0) => command(2 downto 0),
      data_in(7 downto 0) => data_in(7 downto 0),
      framing_error_in => framing_error_in,
      \occupancy_reg[3]_0\(12 downto 0) => \^status\(12 downto 0),
      rst => rst,
      status(10 downto 0) => \^status\(23 downto 13),
      valid_in => valid_in
    );
end STRUCTURE;
