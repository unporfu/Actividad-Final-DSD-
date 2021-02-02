-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Jan 30 17:12:00 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/UNIDAD_CONTROL_TB_func_synth.vhd
-- Design      : UNIDAD_CONTROL
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UNIDAD_CONTROL is
  port (
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC;
    S_UC : in STD_LOGIC;
    GO : in STD_LOGIC;
    EQ_UC : in STD_LOGIC;
    MAX_UC : in STD_LOGIC;
    LDRABS : out STD_LOGIC;
    LDRO : out STD_LOGIC;
    LDRX : out STD_LOGIC;
    LDRY : out STD_LOGIC;
    SEL_M1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SEL_M2 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UNIDAD_CONTROL : entity is true;
end UNIDAD_CONTROL;

architecture STRUCTURE of UNIDAD_CONTROL is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal EQ_UC_IBUF : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[9]\ : STD_LOGIC;
  signal GO_IBUF : STD_LOGIC;
  signal LDRABS_OBUF : STD_LOGIC;
  signal LDRO_OBUF : STD_LOGIC;
  signal LDRX_OBUF : STD_LOGIC;
  signal LDRY_OBUF : STD_LOGIC;
  signal MAX_UC_IBUF : STD_LOGIC;
  signal \SEL_M1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \SEL_M1_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal SEL_M2_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_UC_IBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[9]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[0]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[10]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[1]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[2]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[3]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[4]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[5]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[6]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[7]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[8]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[9]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,sumay:10000000000,restay:00001000000,restax:00010000000,sumax:01000000000,test4:00100000000";
  attribute SOFT_HLUTNM of LDRABS_OBUF_inst_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of LDRX_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of LDRY_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \SEL_M1_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \SEL_M1_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \SEL_M1_reg[1]\ : label is "LD";
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_IBUF
    );
EQ_UC_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => EQ_UC,
      O => EQ_UC_IBUF
    );
\FSM_onehot_PRESENT_S[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[0]\,
      I1 => GO_IBUF,
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[1]\,
      O => \FSM_onehot_PRESENT_S[0]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[8]\,
      I1 => MAX_UC_IBUF,
      O => \FSM_onehot_PRESENT_S[10]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[0]\,
      I1 => GO_IBUF,
      O => \FSM_onehot_PRESENT_S[1]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[10]\,
      I1 => \FSM_onehot_PRESENT_S_reg_n_0_[6]\,
      I2 => GO_IBUF,
      I3 => \FSM_onehot_PRESENT_S_reg_n_0_[1]\,
      I4 => \FSM_onehot_PRESENT_S_reg_n_0_[9]\,
      I5 => \FSM_onehot_PRESENT_S_reg_n_0_[7]\,
      O => \FSM_onehot_PRESENT_S[2]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => LDRO_OBUF,
      I1 => EQ_UC_IBUF,
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[2]\,
      O => \FSM_onehot_PRESENT_S[3]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[2]\,
      I1 => EQ_UC_IBUF,
      O => \FSM_onehot_PRESENT_S[4]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[4]\,
      I1 => S_UC_IBUF,
      O => \FSM_onehot_PRESENT_S[5]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[5]\,
      I1 => MAX_UC_IBUF,
      O => \FSM_onehot_PRESENT_S[6]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[5]\,
      I1 => MAX_UC_IBUF,
      O => \FSM_onehot_PRESENT_S[7]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[4]\,
      I1 => S_UC_IBUF,
      O => \FSM_onehot_PRESENT_S[8]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[8]\,
      I1 => MAX_UC_IBUF,
      O => \FSM_onehot_PRESENT_S[9]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_PRESENT_S[0]_i_1_n_0\,
      PRE => CLR_IBUF,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[0]\
    );
\FSM_onehot_PRESENT_S_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[10]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[10]\
    );
\FSM_onehot_PRESENT_S_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[1]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[1]\
    );
\FSM_onehot_PRESENT_S_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[2]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[2]\
    );
\FSM_onehot_PRESENT_S_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[3]_i_1_n_0\,
      Q => LDRO_OBUF
    );
\FSM_onehot_PRESENT_S_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[4]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[4]\
    );
\FSM_onehot_PRESENT_S_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[5]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[5]\
    );
\FSM_onehot_PRESENT_S_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[6]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[6]\
    );
\FSM_onehot_PRESENT_S_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[7]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[7]\
    );
\FSM_onehot_PRESENT_S_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[8]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[8]\
    );
\FSM_onehot_PRESENT_S_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \FSM_onehot_PRESENT_S[9]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[9]\
    );
GO_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => GO,
      O => GO_IBUF
    );
LDRABS_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LDRABS_OBUF,
      O => LDRABS
    );
LDRABS_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[1]\,
      I1 => GO_IBUF,
      O => LDRABS_OBUF
    );
LDRO_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LDRO_OBUF,
      O => LDRO
    );
LDRX_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LDRX_OBUF,
      O => LDRX
    );
LDRX_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[9]\,
      I1 => \FSM_onehot_PRESENT_S_reg_n_0_[10]\,
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[1]\,
      I3 => GO_IBUF,
      I4 => \FSM_onehot_PRESENT_S_reg_n_0_[7]\,
      O => LDRX_OBUF
    );
LDRY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LDRY_OBUF,
      O => LDRY
    );
LDRY_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[6]\,
      I1 => GO_IBUF,
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[1]\,
      O => LDRY_OBUF
    );
MAX_UC_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => MAX_UC,
      O => MAX_UC_IBUF
    );
\SEL_M1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEL_M2_OBUF(0),
      O => SEL_M1(0)
    );
\SEL_M1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEL_M2_OBUF(1),
      O => SEL_M1(1)
    );
\SEL_M1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \SEL_M1_reg[0]_i_1_n_0\,
      G => \FSM_onehot_PRESENT_S[2]_i_1_n_0\,
      GE => '1',
      Q => SEL_M2_OBUF(0)
    );
\SEL_M1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[9]\,
      I1 => \FSM_onehot_PRESENT_S_reg_n_0_[1]\,
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[10]\,
      O => \SEL_M1_reg[0]_i_1_n_0\
    );
\SEL_M1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \SEL_M1_reg[1]_i_1_n_0\,
      G => \FSM_onehot_PRESENT_S[2]_i_1_n_0\,
      GE => '1',
      Q => SEL_M2_OBUF(1)
    );
\SEL_M1_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[10]\,
      I1 => \FSM_onehot_PRESENT_S_reg_n_0_[9]\,
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[6]\,
      I3 => \FSM_onehot_PRESENT_S_reg_n_0_[7]\,
      O => \SEL_M1_reg[1]_i_1_n_0\
    );
\SEL_M2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEL_M2_OBUF(0),
      O => SEL_M2(0)
    );
\SEL_M2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEL_M2_OBUF(1),
      O => SEL_M2(1)
    );
S_UC_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S_UC,
      O => S_UC_IBUF
    );
end STRUCTURE;
