-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Oct 28 08:52:24 2026
-- Host        : cici-legion running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_system_uart_rx_0_0_sim_netlist.vhdl
-- Design      : uart_system_uart_rx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid : out STD_LOGIC;
    framing_error : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rx : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_inv_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[1]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_4_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_5_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_6_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_7_n_0\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[2]\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count[1]_i_2_n_0\ : STD_LOGIC;
  signal \count[2]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[5]_i_2_n_0\ : STD_LOGIC;
  signal \count[6]_i_2_n_0\ : STD_LOGIC;
  signal \count[6]_i_3_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[9]_i_2_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal \count[9]_i_4_n_0\ : STD_LOGIC;
  signal \count[9]_i_5_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal framing_error_i_1_n_0 : STD_LOGIC;
  signal rx_meta : STD_LOGIC;
  signal rx_sync : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_inv_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]_inv\ : label is "START:001,STOP:011,DATA:010,WAIT_HIGH:100,IDLE:000";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_state_reg[2]_inv\ : label is "yes";
  attribute SOFT_HLUTNM of \bit_index[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bit_index[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_index[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_index[2]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bit_index[2]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[9]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[7]_i_3\ : label is "soft_lutpair3";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A1A00005A1F5050"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => count_0,
      I5 => rx_sync,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F0000005FE05500"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => count_0,
      I5 => rx_sync,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AE00"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \bit_index_reg_n_0_[2]\,
      I2 => \bit_index[2]_i_5_n_0\,
      I3 => \data_out[7]_i_3_n_0\,
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \data_out[7]_i_4_n_0\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[9]\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[5]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[0]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[2]_inv_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FAA"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => count_0,
      I4 => rx_sync,
      O => \FSM_sequential_state[2]_inv_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => rst
    );
\FSM_sequential_state_reg[2]_inv\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_inv_i_1_n_0\,
      Q => count_0,
      S => rst
    );
\bit_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCCFCFE0EEE0E0"
    )
        port map (
      I0 => \bit_index[2]_i_3_n_0\,
      I1 => \bit_index[2]_i_2_n_0\,
      I2 => \bit_index[2]_i_4_n_0\,
      I3 => \bit_index[0]_i_2_n_0\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \bit_index_reg_n_0_[0]\,
      O => \bit_index[0]_i_1_n_0\
    );
\bit_index[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      O => \bit_index[0]_i_2_n_0\
    );
\bit_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAABBBB8888"
    )
        port map (
      I0 => \bit_index[1]_i_2_n_0\,
      I1 => \bit_index[2]_i_4_n_0\,
      I2 => \bit_index_reg_n_0_[2]\,
      I3 => \bit_index_reg_n_0_[0]\,
      I4 => \bit_index_reg_n_0_[1]\,
      I5 => \bit_index[2]_i_6_n_0\,
      O => \bit_index[1]_i_1_n_0\
    );
\bit_index[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20E0E020"
    )
        port map (
      I0 => rx_sync,
      I1 => \state__0\(1),
      I2 => count_0,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => \bit_index_reg_n_0_[0]\,
      O => \bit_index[1]_i_2_n_0\
    );
\bit_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAAAFEEEFA0AFE0"
    )
        port map (
      I0 => \bit_index[2]_i_2_n_0\,
      I1 => \bit_index[2]_i_3_n_0\,
      I2 => \bit_index[2]_i_4_n_0\,
      I3 => \bit_index_reg_n_0_[2]\,
      I4 => \bit_index[2]_i_5_n_0\,
      I5 => \bit_index[2]_i_6_n_0\,
      O => \bit_index[2]_i_1_n_0\
    );
\bit_index[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => count_0,
      I1 => \state__0\(1),
      I2 => rx_sync,
      O => \bit_index[2]_i_2_n_0\
    );
\bit_index[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(1),
      I1 => count_0,
      O => \bit_index[2]_i_3_n_0\
    );
\bit_index[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => \bit_index[2]_i_7_n_0\,
      I2 => count_0,
      I3 => \state__0\(1),
      I4 => rx_sync,
      I5 => \state__0\(0),
      O => \bit_index[2]_i_4_n_0\
    );
\bit_index[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_index_reg_n_0_[1]\,
      I1 => \bit_index_reg_n_0_[0]\,
      O => \bit_index[2]_i_5_n_0\
    );
\bit_index[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \data_out[7]_i_3_n_0\,
      I5 => \state__0\(0),
      O => \bit_index[2]_i_6_n_0\
    );
\bit_index[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \count_reg_n_0_[9]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[7]\,
      O => \bit_index[2]_i_7_n_0\
    );
\bit_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_index[0]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[0]\,
      R => rst
    );
\bit_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_index[1]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[1]\,
      R => rst
    );
\bit_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_index[2]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[2]\,
      R => rst
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFF20000F2F2"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[1]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(1)
    );
\count[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => \count[1]_i_2_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[2]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(2)
    );
\count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      O => \count[2]_i_2_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[3]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(3)
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      O => \count[3]_i_2_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[4]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(4)
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[4]\,
      O => \count[4]_i_2_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[5]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(5)
    );
\count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => \count[5]_i_2_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[6]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(6)
    );
\count[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count[6]_i_3_n_0\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[6]\,
      O => \count[6]_i_2_n_0\
    );
\count[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => \count[6]_i_3_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[7]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \count[9]_i_5_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \count_reg_n_0_[7]\,
      O => \count[7]_i_2_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF20000F2F20000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[8]_i_2_n_0\,
      I5 => \data_out[7]_i_3_n_0\,
      O => count(8)
    );
\count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \count[9]_i_5_n_0\,
      I3 => \count_reg_n_0_[8]\,
      O => \count[8]_i_2_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F2220000"
    )
        port map (
      I0 => \count[9]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \count[9]_i_3_n_0\,
      I5 => \count[9]_i_4_n_0\,
      O => count(9)
    );
\count[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => count_0,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => \count[9]_i_2_n_0\
    );
\count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4F0F0F0"
    )
        port map (
      I0 => \count[9]_i_5_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \count_reg_n_0_[9]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      O => \count[9]_i_3_n_0\
    );
\count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88088888"
    )
        port map (
      I0 => count_0,
      I1 => \state__0\(1),
      I2 => \count_reg_n_0_[9]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      O => \count[9]_i_4_n_0\
    );
\count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => \count[9]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(0),
      Q => \count_reg_n_0_[0]\,
      R => rst
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(1),
      Q => \count_reg_n_0_[1]\,
      R => rst
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(2),
      Q => \count_reg_n_0_[2]\,
      R => rst
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(3),
      Q => \count_reg_n_0_[3]\,
      R => rst
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(4),
      Q => \count_reg_n_0_[4]\,
      R => rst
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(5),
      Q => \count_reg_n_0_[5]\,
      R => rst
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(6),
      Q => \count_reg_n_0_[6]\,
      R => rst
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(7),
      Q => \count_reg_n_0_[7]\,
      R => rst
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(8),
      Q => \count_reg_n_0_[8]\,
      R => rst
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_0,
      D => count(9),
      Q => \count_reg_n_0_[9]\,
      R => rst
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rx_sync,
      I1 => \state__0\(0),
      I2 => \data_out[7]_i_2_n_0\,
      I3 => \data_out[7]_i_3_n_0\,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => count_0,
      I1 => \state__0\(1),
      I2 => \count_reg_n_0_[9]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFBFBFBFFFB"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[5]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[6]\,
      I5 => \count_reg_n_0_[7]\,
      O => \data_out[7]_i_4_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[0]\,
      Q => data_out(0),
      R => rst
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[1]\,
      Q => data_out(1),
      R => rst
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[2]\,
      Q => data_out(2),
      R => rst
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[3]\,
      Q => data_out(3),
      R => rst
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[4]\,
      Q => data_out(4),
      R => rst
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[5]\,
      Q => data_out(5),
      R => rst
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[6]\,
      Q => data_out(6),
      R => rst
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => \data_shift_reg_n_0_[7]\,
      Q => data_out(7),
      R => rst
    );
\data_shift[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[2]\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[0]\,
      O => \data_shift[0]_i_1_n_0\
    );
\data_shift[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[2]\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[1]\,
      O => \data_shift[1]_i_1_n_0\
    );
\data_shift[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => \bit_index_reg_n_0_[2]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[2]\,
      O => \data_shift[2]_i_1_n_0\
    );
\data_shift[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[2]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => \bit_index_reg_n_0_[0]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[3]\,
      O => \data_shift[3]_i_1_n_0\
    );
\data_shift[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[2]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[4]\,
      O => \data_shift[4]_i_1_n_0\
    );
\data_shift[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[2]\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[5]\,
      O => \data_shift[5]_i_1_n_0\
    );
\data_shift[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => \bit_index_reg_n_0_[2]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[6]\,
      O => \data_shift[6]_i_1_n_0\
    );
\data_shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => rx_sync,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => \bit_index_reg_n_0_[2]\,
      I4 => \bit_index[2]_i_6_n_0\,
      I5 => \data_shift_reg_n_0_[7]\,
      O => \data_shift[7]_i_1_n_0\
    );
\data_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[0]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[0]\,
      R => rst
    );
\data_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[1]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[1]\,
      R => rst
    );
\data_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[2]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[2]\,
      R => rst
    );
\data_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[3]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[3]\,
      R => rst
    );
\data_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[4]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[4]\,
      R => rst
    );
\data_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[5]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[5]\,
      R => rst
    );
\data_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[6]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[6]\,
      R => rst
    );
\data_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_shift[7]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[7]\,
      R => rst
    );
framing_error_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_sync,
      I1 => \state__0\(0),
      I2 => \data_out[7]_i_2_n_0\,
      I3 => \data_out[7]_i_3_n_0\,
      O => framing_error_i_1_n_0
    );
framing_error_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => framing_error_i_1_n_0,
      Q => framing_error,
      R => rst
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
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => valid,
      R => rst
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
    rx : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid : out STD_LOGIC;
    framing_error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_system_uart_rx_0_0,uart_rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_rx,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
     port map (
      clk => clk,
      data_out(7 downto 0) => data_out(7 downto 0),
      framing_error => framing_error,
      rst => rst,
      rx => rx,
      valid => valid
    );
end STRUCTURE;
