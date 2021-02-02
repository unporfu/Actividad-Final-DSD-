-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 00:14:43 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/MUX_X_TB_func_synth.vhd
-- Design      : MUX_X
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MUX_X is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    X_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    X_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    X : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MUX_X : entity is true;
end MUX_X;

architecture STRUCTURE of MUX_X is
  signal A_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SEL_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal X_2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal X_3_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal X_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\A_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(4),
      O => A_IBUF(4)
    );
\A_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(5),
      O => A_IBUF(5)
    );
\A_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(6),
      O => A_IBUF(6)
    );
\A_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(7),
      O => A_IBUF(7)
    );
\SEL_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SEL(0),
      O => SEL_IBUF(0)
    );
\SEL_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SEL(1),
      O => SEL_IBUF(1)
    );
\X_2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(0),
      O => X_2_IBUF(0)
    );
\X_2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(1),
      O => X_2_IBUF(1)
    );
\X_2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(2),
      O => X_2_IBUF(2)
    );
\X_2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(3),
      O => X_2_IBUF(3)
    );
\X_2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(4),
      O => X_2_IBUF(4)
    );
\X_2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(5),
      O => X_2_IBUF(5)
    );
\X_2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(6),
      O => X_2_IBUF(6)
    );
\X_2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_2(7),
      O => X_2_IBUF(7)
    );
\X_3_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(0),
      O => X_3_IBUF(0)
    );
\X_3_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(1),
      O => X_3_IBUF(1)
    );
\X_3_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(2),
      O => X_3_IBUF(2)
    );
\X_3_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(3),
      O => X_3_IBUF(3)
    );
\X_3_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(4),
      O => X_3_IBUF(4)
    );
\X_3_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(5),
      O => X_3_IBUF(5)
    );
\X_3_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(6),
      O => X_3_IBUF(6)
    );
\X_3_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_3(7),
      O => X_3_IBUF(7)
    );
\X_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(0),
      O => X(0)
    );
\X_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(0),
      I1 => A_IBUF(0),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(0),
      O => X_OBUF(0)
    );
\X_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(1),
      O => X(1)
    );
\X_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(1),
      I1 => A_IBUF(1),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(1),
      O => X_OBUF(1)
    );
\X_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(2),
      O => X(2)
    );
\X_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(2),
      I1 => A_IBUF(2),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(2),
      O => X_OBUF(2)
    );
\X_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(3),
      O => X(3)
    );
\X_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(3),
      I1 => A_IBUF(3),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(3),
      O => X_OBUF(3)
    );
\X_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(4),
      O => X(4)
    );
\X_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(4),
      I1 => A_IBUF(4),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(4),
      O => X_OBUF(4)
    );
\X_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(5),
      O => X(5)
    );
\X_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(5),
      I1 => A_IBUF(5),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(5),
      O => X_OBUF(5)
    );
\X_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(6),
      O => X(6)
    );
\X_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(6),
      I1 => A_IBUF(6),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(6),
      O => X_OBUF(6)
    );
\X_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => X_OBUF(7),
      O => X(7)
    );
\X_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => X_3_IBUF(7),
      I1 => A_IBUF(7),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => X_2_IBUF(7),
      O => X_OBUF(7)
    );
end STRUCTURE;
