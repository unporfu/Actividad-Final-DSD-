-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 19:14:16 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/SUMADOR_X_TB_func_synth.vhd
-- Design      : SUMADOR_X
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SUMADOR_X is
  port (
    X_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    XO_P : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SUMADOR_X : entity is true;
end SUMADOR_X;

architecture STRUCTURE of SUMADOR_X is
  signal A_P_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal XO_P_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \XO_P_OBUF[3]_inst_i_1_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[3]_inst_i_1_n_1\ : STD_LOGIC;
  signal \XO_P_OBUF[3]_inst_i_1_n_2\ : STD_LOGIC;
  signal \XO_P_OBUF[3]_inst_i_1_n_3\ : STD_LOGIC;
  signal \XO_P_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[7]_inst_i_1_n_1\ : STD_LOGIC;
  signal \XO_P_OBUF[7]_inst_i_1_n_2\ : STD_LOGIC;
  signal \XO_P_OBUF[7]_inst_i_1_n_3\ : STD_LOGIC;
  signal \XO_P_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \XO_P_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal X_P_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_XO_P_OBUF[7]_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \XO_P_OBUF[3]_inst_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \XO_P_OBUF[7]_inst_i_1\ : label is 35;
begin
\A_P_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(0),
      O => A_P_IBUF(0)
    );
\A_P_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(1),
      O => A_P_IBUF(1)
    );
\A_P_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(2),
      O => A_P_IBUF(2)
    );
\A_P_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(3),
      O => A_P_IBUF(3)
    );
\A_P_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(4),
      O => A_P_IBUF(4)
    );
\A_P_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(5),
      O => A_P_IBUF(5)
    );
\A_P_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(6),
      O => A_P_IBUF(6)
    );
\A_P_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_P(7),
      O => A_P_IBUF(7)
    );
\XO_P_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(0),
      O => XO_P(0)
    );
\XO_P_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(1),
      O => XO_P(1)
    );
\XO_P_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(2),
      O => XO_P(2)
    );
\XO_P_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(3),
      O => XO_P(3)
    );
\XO_P_OBUF[3]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \XO_P_OBUF[3]_inst_i_1_n_0\,
      CO(2) => \XO_P_OBUF[3]_inst_i_1_n_1\,
      CO(1) => \XO_P_OBUF[3]_inst_i_1_n_2\,
      CO(0) => \XO_P_OBUF[3]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A_P_IBUF(3 downto 0),
      O(3 downto 0) => XO_P_OBUF(3 downto 0),
      S(3) => \XO_P_OBUF[3]_inst_i_2_n_0\,
      S(2) => \XO_P_OBUF[3]_inst_i_3_n_0\,
      S(1) => \XO_P_OBUF[3]_inst_i_4_n_0\,
      S(0) => \XO_P_OBUF[3]_inst_i_5_n_0\
    );
\XO_P_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(3),
      I1 => X_P_IBUF(3),
      O => \XO_P_OBUF[3]_inst_i_2_n_0\
    );
\XO_P_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(2),
      I1 => X_P_IBUF(2),
      O => \XO_P_OBUF[3]_inst_i_3_n_0\
    );
\XO_P_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(1),
      I1 => X_P_IBUF(1),
      O => \XO_P_OBUF[3]_inst_i_4_n_0\
    );
\XO_P_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(0),
      I1 => X_P_IBUF(0),
      O => \XO_P_OBUF[3]_inst_i_5_n_0\
    );
\XO_P_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(4),
      O => XO_P(4)
    );
\XO_P_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(5),
      O => XO_P(5)
    );
\XO_P_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(6),
      O => XO_P(6)
    );
\XO_P_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => XO_P_OBUF(7),
      O => XO_P(7)
    );
\XO_P_OBUF[7]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \XO_P_OBUF[3]_inst_i_1_n_0\,
      CO(3) => \NLW_XO_P_OBUF[7]_inst_i_1_CO_UNCONNECTED\(3),
      CO(2) => \XO_P_OBUF[7]_inst_i_1_n_1\,
      CO(1) => \XO_P_OBUF[7]_inst_i_1_n_2\,
      CO(0) => \XO_P_OBUF[7]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A_P_IBUF(6 downto 4),
      O(3 downto 0) => XO_P_OBUF(7 downto 4),
      S(3) => \XO_P_OBUF[7]_inst_i_2_n_0\,
      S(2) => \XO_P_OBUF[7]_inst_i_3_n_0\,
      S(1) => \XO_P_OBUF[7]_inst_i_4_n_0\,
      S(0) => \XO_P_OBUF[7]_inst_i_5_n_0\
    );
\XO_P_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(7),
      I1 => X_P_IBUF(7),
      O => \XO_P_OBUF[7]_inst_i_2_n_0\
    );
\XO_P_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(6),
      I1 => X_P_IBUF(6),
      O => \XO_P_OBUF[7]_inst_i_3_n_0\
    );
\XO_P_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(5),
      I1 => X_P_IBUF(5),
      O => \XO_P_OBUF[7]_inst_i_4_n_0\
    );
\XO_P_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_P_IBUF(4),
      I1 => X_P_IBUF(4),
      O => \XO_P_OBUF[7]_inst_i_5_n_0\
    );
\X_P_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(0),
      O => X_P_IBUF(0)
    );
\X_P_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(1),
      O => X_P_IBUF(1)
    );
\X_P_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(2),
      O => X_P_IBUF(2)
    );
\X_P_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(3),
      O => X_P_IBUF(3)
    );
\X_P_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(4),
      O => X_P_IBUF(4)
    );
\X_P_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(5),
      O => X_P_IBUF(5)
    );
\X_P_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(6),
      O => X_P_IBUF(6)
    );
\X_P_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_P(7),
      O => X_P_IBUF(7)
    );
end STRUCTURE;
