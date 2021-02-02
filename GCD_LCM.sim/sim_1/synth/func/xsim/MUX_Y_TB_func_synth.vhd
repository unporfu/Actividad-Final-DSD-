-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 00:40:20 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/MUX_Y_TB_func_synth.vhd
-- Design      : MUX_Y
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MUX_Y is
  port (
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MUX_Y : entity is true;
end MUX_Y;

architecture STRUCTURE of MUX_Y is
  signal B_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SEL_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Y_2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Y_3_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Y_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
\B_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(4),
      O => B_IBUF(4)
    );
\B_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(5),
      O => B_IBUF(5)
    );
\B_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(6),
      O => B_IBUF(6)
    );
\B_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(7),
      O => B_IBUF(7)
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
\Y_2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(0),
      O => Y_2_IBUF(0)
    );
\Y_2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(1),
      O => Y_2_IBUF(1)
    );
\Y_2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(2),
      O => Y_2_IBUF(2)
    );
\Y_2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(3),
      O => Y_2_IBUF(3)
    );
\Y_2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(4),
      O => Y_2_IBUF(4)
    );
\Y_2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(5),
      O => Y_2_IBUF(5)
    );
\Y_2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(6),
      O => Y_2_IBUF(6)
    );
\Y_2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_2(7),
      O => Y_2_IBUF(7)
    );
\Y_3_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(0),
      O => Y_3_IBUF(0)
    );
\Y_3_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(1),
      O => Y_3_IBUF(1)
    );
\Y_3_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(2),
      O => Y_3_IBUF(2)
    );
\Y_3_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(3),
      O => Y_3_IBUF(3)
    );
\Y_3_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(4),
      O => Y_3_IBUF(4)
    );
\Y_3_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(5),
      O => Y_3_IBUF(5)
    );
\Y_3_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(6),
      O => Y_3_IBUF(6)
    );
\Y_3_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y_3(7),
      O => Y_3_IBUF(7)
    );
\Y_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(0),
      O => Y(0)
    );
\Y_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(0),
      I1 => B_IBUF(0),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(0),
      O => Y_OBUF(0)
    );
\Y_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(1),
      O => Y(1)
    );
\Y_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(1),
      I1 => B_IBUF(1),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(1),
      O => Y_OBUF(1)
    );
\Y_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(2),
      O => Y(2)
    );
\Y_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(2),
      I1 => B_IBUF(2),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(2),
      O => Y_OBUF(2)
    );
\Y_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(3),
      O => Y(3)
    );
\Y_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(3),
      I1 => B_IBUF(3),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(3),
      O => Y_OBUF(3)
    );
\Y_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(4),
      O => Y(4)
    );
\Y_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(4),
      I1 => B_IBUF(4),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(4),
      O => Y_OBUF(4)
    );
\Y_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(5),
      O => Y(5)
    );
\Y_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(5),
      I1 => B_IBUF(5),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(5),
      O => Y_OBUF(5)
    );
\Y_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(6),
      O => Y(6)
    );
\Y_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(6),
      I1 => B_IBUF(6),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(6),
      O => Y_OBUF(6)
    );
\Y_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Y_OBUF(7),
      O => Y(7)
    );
\Y_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => Y_3_IBUF(7),
      I1 => B_IBUF(7),
      I2 => SEL_IBUF(0),
      I3 => SEL_IBUF(1),
      I4 => Y_2_IBUF(7),
      O => Y_OBUF(7)
    );
end STRUCTURE;
