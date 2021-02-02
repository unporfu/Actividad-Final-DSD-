-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 18:14:03 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/REG_OUT_TB_func_synth.vhd
-- Design      : REG_OUT
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REG_OUT is
  port (
    X_OUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OUT_G : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OUTLD : in STD_LOGIC;
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of REG_OUT : entity is true;
end REG_OUT;

architecture STRUCTURE of REG_OUT is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal OUTLD_IBUF : STD_LOGIC;
  signal OUT_G_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal X_OUT_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
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
OUTLD_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => OUTLD,
      O => OUTLD_IBUF
    );
\OUT_G_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(0),
      O => OUT_G(0)
    );
\OUT_G_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(1),
      O => OUT_G(1)
    );
\OUT_G_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(2),
      O => OUT_G(2)
    );
\OUT_G_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(3),
      O => OUT_G(3)
    );
\OUT_G_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(4),
      O => OUT_G(4)
    );
\OUT_G_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(5),
      O => OUT_G(5)
    );
\OUT_G_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(6),
      O => OUT_G(6)
    );
\OUT_G_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_G_OBUF(7),
      O => OUT_G(7)
    );
\OUT_G_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(0),
      Q => OUT_G_OBUF(0)
    );
\OUT_G_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(1),
      Q => OUT_G_OBUF(1)
    );
\OUT_G_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(2),
      Q => OUT_G_OBUF(2)
    );
\OUT_G_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(3),
      Q => OUT_G_OBUF(3)
    );
\OUT_G_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(4),
      Q => OUT_G_OBUF(4)
    );
\OUT_G_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(5),
      Q => OUT_G_OBUF(5)
    );
\OUT_G_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(6),
      Q => OUT_G_OBUF(6)
    );
\OUT_G_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => OUTLD_IBUF,
      CLR => CLR_IBUF,
      D => X_OUT_IBUF(7),
      Q => OUT_G_OBUF(7)
    );
\X_OUT_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(0),
      O => X_OUT_IBUF(0)
    );
\X_OUT_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(1),
      O => X_OUT_IBUF(1)
    );
\X_OUT_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(2),
      O => X_OUT_IBUF(2)
    );
\X_OUT_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(3),
      O => X_OUT_IBUF(3)
    );
\X_OUT_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(4),
      O => X_OUT_IBUF(4)
    );
\X_OUT_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(5),
      O => X_OUT_IBUF(5)
    );
\X_OUT_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(6),
      O => X_OUT_IBUF(6)
    );
\X_OUT_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X_OUT(7),
      O => X_OUT_IBUF(7)
    );
end STRUCTURE;
