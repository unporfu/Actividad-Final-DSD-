-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 19:48:04 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/RESTADOR_Y_TB_func_synth.vhd
-- Design      : RESTADOR_Y
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RESTADOR_Y is
  port (
    Y_M : in STD_LOGIC_VECTOR ( 7 downto 0 );
    X_M : in STD_LOGIC_VECTOR ( 7 downto 0 );
    YO_M : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RESTADOR_Y : entity is true;
end RESTADOR_Y;

architecture STRUCTURE of RESTADOR_Y is
  signal X_M_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal YO_M_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \YO_M_OBUF[3]_inst_i_1_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[3]_inst_i_1_n_1\ : STD_LOGIC;
  signal \YO_M_OBUF[3]_inst_i_1_n_2\ : STD_LOGIC;
  signal \YO_M_OBUF[3]_inst_i_1_n_3\ : STD_LOGIC;
  signal \YO_M_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[7]_inst_i_1_n_1\ : STD_LOGIC;
  signal \YO_M_OBUF[7]_inst_i_1_n_2\ : STD_LOGIC;
  signal \YO_M_OBUF[7]_inst_i_1_n_3\ : STD_LOGIC;
  signal \YO_M_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \YO_M_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal Y_M_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_YO_M_OBUF[7]_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \YO_M_OBUF[3]_inst_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \YO_M_OBUF[7]_inst_i_1\ : label is 35;
begin
\X_M_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(0),
      O => X_M_IBUF(0)
    );
\X_M_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(1),
      O => X_M_IBUF(1)
    );
\X_M_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(2),
      O => X_M_IBUF(2)
    );
\X_M_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(3),
      O => X_M_IBUF(3)
    );
\X_M_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(4),
      O => X_M_IBUF(4)
    );
\X_M_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(5),
      O => X_M_IBUF(5)
    );
\X_M_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(6),
      O => X_M_IBUF(6)
    );
\X_M_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_M(7),
      O => X_M_IBUF(7)
    );
\YO_M_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(0),
      O => YO_M(0)
    );
\YO_M_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(1),
      O => YO_M(1)
    );
\YO_M_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(2),
      O => YO_M(2)
    );
\YO_M_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(3),
      O => YO_M(3)
    );
\YO_M_OBUF[3]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \YO_M_OBUF[3]_inst_i_1_n_0\,
      CO(2) => \YO_M_OBUF[3]_inst_i_1_n_1\,
      CO(1) => \YO_M_OBUF[3]_inst_i_1_n_2\,
      CO(0) => \YO_M_OBUF[3]_inst_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Y_M_IBUF(3 downto 0),
      O(3 downto 0) => YO_M_OBUF(3 downto 0),
      S(3) => \YO_M_OBUF[3]_inst_i_2_n_0\,
      S(2) => \YO_M_OBUF[3]_inst_i_3_n_0\,
      S(1) => \YO_M_OBUF[3]_inst_i_4_n_0\,
      S(0) => \YO_M_OBUF[3]_inst_i_5_n_0\
    );
\YO_M_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(3),
      I1 => X_M_IBUF(3),
      O => \YO_M_OBUF[3]_inst_i_2_n_0\
    );
\YO_M_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(2),
      I1 => X_M_IBUF(2),
      O => \YO_M_OBUF[3]_inst_i_3_n_0\
    );
\YO_M_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(1),
      I1 => X_M_IBUF(1),
      O => \YO_M_OBUF[3]_inst_i_4_n_0\
    );
\YO_M_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(0),
      I1 => X_M_IBUF(0),
      O => \YO_M_OBUF[3]_inst_i_5_n_0\
    );
\YO_M_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(4),
      O => YO_M(4)
    );
\YO_M_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(5),
      O => YO_M(5)
    );
\YO_M_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(6),
      O => YO_M(6)
    );
\YO_M_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => YO_M_OBUF(7),
      O => YO_M(7)
    );
\YO_M_OBUF[7]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \YO_M_OBUF[3]_inst_i_1_n_0\,
      CO(3) => \NLW_YO_M_OBUF[7]_inst_i_1_CO_UNCONNECTED\(3),
      CO(2) => \YO_M_OBUF[7]_inst_i_1_n_1\,
      CO(1) => \YO_M_OBUF[7]_inst_i_1_n_2\,
      CO(0) => \YO_M_OBUF[7]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Y_M_IBUF(6 downto 4),
      O(3 downto 0) => YO_M_OBUF(7 downto 4),
      S(3) => \YO_M_OBUF[7]_inst_i_2_n_0\,
      S(2) => \YO_M_OBUF[7]_inst_i_3_n_0\,
      S(1) => \YO_M_OBUF[7]_inst_i_4_n_0\,
      S(0) => \YO_M_OBUF[7]_inst_i_5_n_0\
    );
\YO_M_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(7),
      I1 => X_M_IBUF(7),
      O => \YO_M_OBUF[7]_inst_i_2_n_0\
    );
\YO_M_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(6),
      I1 => X_M_IBUF(6),
      O => \YO_M_OBUF[7]_inst_i_3_n_0\
    );
\YO_M_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(5),
      I1 => X_M_IBUF(5),
      O => \YO_M_OBUF[7]_inst_i_4_n_0\
    );
\YO_M_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Y_M_IBUF(4),
      I1 => X_M_IBUF(4),
      O => \YO_M_OBUF[7]_inst_i_5_n_0\
    );
\Y_M_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(0),
      O => Y_M_IBUF(0)
    );
\Y_M_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(1),
      O => Y_M_IBUF(1)
    );
\Y_M_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(2),
      O => Y_M_IBUF(2)
    );
\Y_M_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(3),
      O => Y_M_IBUF(3)
    );
\Y_M_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(4),
      O => Y_M_IBUF(4)
    );
\Y_M_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(5),
      O => Y_M_IBUF(5)
    );
\Y_M_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(6),
      O => Y_M_IBUF(6)
    );
\Y_M_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_M(7),
      O => Y_M_IBUF(7)
    );
end STRUCTURE;
