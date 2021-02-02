-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 21:13:00 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/COMPARADOR_TB_func_synth.vhd
-- Design      : COMPARADOR
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity COMPARADOR is
  port (
    X_C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y_C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    EQ : out STD_LOGIC;
    MAX : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of COMPARADOR : entity is true;
end COMPARADOR;

architecture STRUCTURE of COMPARADOR is
  signal EQ_OBUF : STD_LOGIC;
  signal EQ_reg_i_10_n_0 : STD_LOGIC;
  signal EQ_reg_i_11_n_0 : STD_LOGIC;
  signal EQ_reg_i_12_n_0 : STD_LOGIC;
  signal EQ_reg_i_13_n_0 : STD_LOGIC;
  signal EQ_reg_i_14_n_0 : STD_LOGIC;
  signal EQ_reg_i_1_n_0 : STD_LOGIC;
  signal EQ_reg_i_2_n_0 : STD_LOGIC;
  signal EQ_reg_i_3_n_0 : STD_LOGIC;
  signal EQ_reg_i_4_n_0 : STD_LOGIC;
  signal EQ_reg_i_5_n_0 : STD_LOGIC;
  signal EQ_reg_i_6_n_0 : STD_LOGIC;
  signal EQ_reg_i_6_n_1 : STD_LOGIC;
  signal EQ_reg_i_6_n_2 : STD_LOGIC;
  signal EQ_reg_i_6_n_3 : STD_LOGIC;
  signal EQ_reg_i_7_n_0 : STD_LOGIC;
  signal EQ_reg_i_8_n_0 : STD_LOGIC;
  signal EQ_reg_i_9_n_0 : STD_LOGIC;
  signal MAX_OBUF : STD_LOGIC;
  signal MAX_reg_i_10_n_0 : STD_LOGIC;
  signal MAX_reg_i_1_n_0 : STD_LOGIC;
  signal MAX_reg_i_2_n_0 : STD_LOGIC;
  signal MAX_reg_i_2_n_1 : STD_LOGIC;
  signal MAX_reg_i_2_n_2 : STD_LOGIC;
  signal MAX_reg_i_2_n_3 : STD_LOGIC;
  signal MAX_reg_i_3_n_0 : STD_LOGIC;
  signal MAX_reg_i_4_n_0 : STD_LOGIC;
  signal MAX_reg_i_5_n_0 : STD_LOGIC;
  signal MAX_reg_i_6_n_0 : STD_LOGIC;
  signal MAX_reg_i_7_n_0 : STD_LOGIC;
  signal MAX_reg_i_8_n_0 : STD_LOGIC;
  signal MAX_reg_i_9_n_0 : STD_LOGIC;
  signal X_C_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Y_C_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_EQ_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MAX_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of EQ_reg : label is "LDC";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of EQ_reg_i_6 : label is 11;
  attribute COMPARATOR_THRESHOLD of MAX_reg_i_2 : label is 11;
begin
EQ_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => EQ_OBUF,
      O => EQ
    );
EQ_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => EQ_reg_i_2_n_0,
      D => EQ_reg_i_1_n_0,
      G => EQ_reg_i_1_n_0,
      GE => '1',
      Q => EQ_OBUF
    );
EQ_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40040000"
    )
        port map (
      I0 => EQ_reg_i_3_n_0,
      I1 => EQ_reg_i_4_n_0,
      I2 => Y_C_IBUF(3),
      I3 => X_C_IBUF(3),
      I4 => EQ_reg_i_5_n_0,
      O => EQ_reg_i_1_n_0
    );
EQ_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Y_C_IBUF(0),
      I1 => X_C_IBUF(0),
      I2 => X_C_IBUF(1),
      I3 => Y_C_IBUF(1),
      O => EQ_reg_i_10_n_0
    );
EQ_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => X_C_IBUF(7),
      I1 => Y_C_IBUF(7),
      I2 => X_C_IBUF(6),
      I3 => Y_C_IBUF(6),
      O => EQ_reg_i_11_n_0
    );
EQ_reg_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Y_C_IBUF(4),
      I1 => X_C_IBUF(4),
      I2 => Y_C_IBUF(5),
      I3 => X_C_IBUF(5),
      O => EQ_reg_i_12_n_0
    );
EQ_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Y_C_IBUF(2),
      I1 => X_C_IBUF(2),
      I2 => Y_C_IBUF(3),
      I3 => X_C_IBUF(3),
      O => EQ_reg_i_13_n_0
    );
EQ_reg_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Y_C_IBUF(0),
      I1 => X_C_IBUF(0),
      I2 => Y_C_IBUF(1),
      I3 => X_C_IBUF(1),
      O => EQ_reg_i_14_n_0
    );
EQ_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => EQ_reg_i_6_n_0,
      I1 => MAX_reg_i_2_n_0,
      O => EQ_reg_i_2_n_0
    );
EQ_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => Y_C_IBUF(6),
      I1 => X_C_IBUF(6),
      I2 => Y_C_IBUF(7),
      I3 => X_C_IBUF(7),
      O => EQ_reg_i_3_n_0
    );
EQ_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Y_C_IBUF(4),
      I1 => X_C_IBUF(4),
      I2 => Y_C_IBUF(5),
      I3 => X_C_IBUF(5),
      O => EQ_reg_i_4_n_0
    );
EQ_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => X_C_IBUF(2),
      I1 => Y_C_IBUF(2),
      I2 => X_C_IBUF(1),
      I3 => Y_C_IBUF(1),
      I4 => Y_C_IBUF(0),
      I5 => X_C_IBUF(0),
      O => EQ_reg_i_5_n_0
    );
EQ_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => EQ_reg_i_6_n_0,
      CO(2) => EQ_reg_i_6_n_1,
      CO(1) => EQ_reg_i_6_n_2,
      CO(0) => EQ_reg_i_6_n_3,
      CYINIT => '0',
      DI(3) => EQ_reg_i_7_n_0,
      DI(2) => EQ_reg_i_8_n_0,
      DI(1) => EQ_reg_i_9_n_0,
      DI(0) => EQ_reg_i_10_n_0,
      O(3 downto 0) => NLW_EQ_reg_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => EQ_reg_i_11_n_0,
      S(2) => EQ_reg_i_12_n_0,
      S(1) => EQ_reg_i_13_n_0,
      S(0) => EQ_reg_i_14_n_0
    );
EQ_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Y_C_IBUF(6),
      I1 => X_C_IBUF(6),
      I2 => X_C_IBUF(7),
      I3 => Y_C_IBUF(7),
      O => EQ_reg_i_7_n_0
    );
EQ_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Y_C_IBUF(4),
      I1 => X_C_IBUF(4),
      I2 => X_C_IBUF(5),
      I3 => Y_C_IBUF(5),
      O => EQ_reg_i_8_n_0
    );
EQ_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Y_C_IBUF(2),
      I1 => X_C_IBUF(2),
      I2 => X_C_IBUF(3),
      I3 => Y_C_IBUF(3),
      O => EQ_reg_i_9_n_0
    );
MAX_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MAX_OBUF,
      O => MAX
    );
MAX_reg: unisim.vcomponents.LDCP
    generic map(
      INIT => '0'
    )
        port map (
      CLR => MAX_reg_i_1_n_0,
      D => '0',
      G => EQ_reg_i_1_n_0,
      PRE => MAX_reg_i_2_n_0,
      Q => MAX_OBUF
    );
MAX_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EQ_reg_i_6_n_0,
      I1 => MAX_reg_i_2_n_0,
      O => MAX_reg_i_1_n_0
    );
MAX_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => X_C_IBUF(0),
      I1 => Y_C_IBUF(0),
      I2 => X_C_IBUF(1),
      I3 => Y_C_IBUF(1),
      O => MAX_reg_i_10_n_0
    );
MAX_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => MAX_reg_i_2_n_0,
      CO(2) => MAX_reg_i_2_n_1,
      CO(1) => MAX_reg_i_2_n_2,
      CO(0) => MAX_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => MAX_reg_i_3_n_0,
      DI(2) => MAX_reg_i_4_n_0,
      DI(1) => MAX_reg_i_5_n_0,
      DI(0) => MAX_reg_i_6_n_0,
      O(3 downto 0) => NLW_MAX_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => MAX_reg_i_7_n_0,
      S(2) => MAX_reg_i_8_n_0,
      S(1) => MAX_reg_i_9_n_0,
      S(0) => MAX_reg_i_10_n_0
    );
MAX_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => X_C_IBUF(6),
      I1 => Y_C_IBUF(6),
      I2 => Y_C_IBUF(7),
      I3 => X_C_IBUF(7),
      O => MAX_reg_i_3_n_0
    );
MAX_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => X_C_IBUF(4),
      I1 => Y_C_IBUF(4),
      I2 => Y_C_IBUF(5),
      I3 => X_C_IBUF(5),
      O => MAX_reg_i_4_n_0
    );
MAX_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => X_C_IBUF(2),
      I1 => Y_C_IBUF(2),
      I2 => Y_C_IBUF(3),
      I3 => X_C_IBUF(3),
      O => MAX_reg_i_5_n_0
    );
MAX_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => X_C_IBUF(0),
      I1 => Y_C_IBUF(0),
      I2 => Y_C_IBUF(1),
      I3 => X_C_IBUF(1),
      O => MAX_reg_i_6_n_0
    );
MAX_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => X_C_IBUF(6),
      I1 => Y_C_IBUF(6),
      I2 => X_C_IBUF(7),
      I3 => Y_C_IBUF(7),
      O => MAX_reg_i_7_n_0
    );
MAX_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => X_C_IBUF(4),
      I1 => Y_C_IBUF(4),
      I2 => X_C_IBUF(5),
      I3 => Y_C_IBUF(5),
      O => MAX_reg_i_8_n_0
    );
MAX_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => X_C_IBUF(2),
      I1 => Y_C_IBUF(2),
      I2 => X_C_IBUF(3),
      I3 => Y_C_IBUF(3),
      O => MAX_reg_i_9_n_0
    );
\X_C_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(0),
      O => X_C_IBUF(0)
    );
\X_C_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(1),
      O => X_C_IBUF(1)
    );
\X_C_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(2),
      O => X_C_IBUF(2)
    );
\X_C_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(3),
      O => X_C_IBUF(3)
    );
\X_C_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(4),
      O => X_C_IBUF(4)
    );
\X_C_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(5),
      O => X_C_IBUF(5)
    );
\X_C_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(6),
      O => X_C_IBUF(6)
    );
\X_C_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_C(7),
      O => X_C_IBUF(7)
    );
\Y_C_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(0),
      O => Y_C_IBUF(0)
    );
\Y_C_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(1),
      O => Y_C_IBUF(1)
    );
\Y_C_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(2),
      O => Y_C_IBUF(2)
    );
\Y_C_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(3),
      O => Y_C_IBUF(3)
    );
\Y_C_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(4),
      O => Y_C_IBUF(4)
    );
\Y_C_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(5),
      O => Y_C_IBUF(5)
    );
\Y_C_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(6),
      O => Y_C_IBUF(6)
    );
\Y_C_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_C(7),
      O => Y_C_IBUF(7)
    );
end STRUCTURE;
