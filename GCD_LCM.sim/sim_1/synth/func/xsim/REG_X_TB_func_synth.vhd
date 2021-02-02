-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 15:49:14 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/REG_X_TB_func_synth.vhd
-- Design      : REG_X
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REG_X is
  port (
    IN_RX : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OUT_RX : out STD_LOGIC_VECTOR ( 7 downto 0 );
    XLD : in STD_LOGIC;
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of REG_X : entity is true;
end REG_X;

architecture STRUCTURE of REG_X is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal IN_RX_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal OUT_RX_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal XLD_IBUF : STD_LOGIC;
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
\IN_RX_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(0),
      O => IN_RX_IBUF(0)
    );
\IN_RX_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(1),
      O => IN_RX_IBUF(1)
    );
\IN_RX_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(2),
      O => IN_RX_IBUF(2)
    );
\IN_RX_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(3),
      O => IN_RX_IBUF(3)
    );
\IN_RX_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(4),
      O => IN_RX_IBUF(4)
    );
\IN_RX_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(5),
      O => IN_RX_IBUF(5)
    );
\IN_RX_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(6),
      O => IN_RX_IBUF(6)
    );
\IN_RX_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IN_RX(7),
      O => IN_RX_IBUF(7)
    );
\OUT_RX_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(0),
      O => OUT_RX(0)
    );
\OUT_RX_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(1),
      O => OUT_RX(1)
    );
\OUT_RX_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(2),
      O => OUT_RX(2)
    );
\OUT_RX_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(3),
      O => OUT_RX(3)
    );
\OUT_RX_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(4),
      O => OUT_RX(4)
    );
\OUT_RX_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(5),
      O => OUT_RX(5)
    );
\OUT_RX_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(6),
      O => OUT_RX(6)
    );
\OUT_RX_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => OUT_RX_OBUF(7),
      O => OUT_RX(7)
    );
\OUT_RX_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(0),
      Q => OUT_RX_OBUF(0)
    );
\OUT_RX_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(1),
      Q => OUT_RX_OBUF(1)
    );
\OUT_RX_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(2),
      Q => OUT_RX_OBUF(2)
    );
\OUT_RX_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(3),
      Q => OUT_RX_OBUF(3)
    );
\OUT_RX_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(4),
      Q => OUT_RX_OBUF(4)
    );
\OUT_RX_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(5),
      Q => OUT_RX_OBUF(5)
    );
\OUT_RX_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(6),
      Q => OUT_RX_OBUF(6)
    );
\OUT_RX_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => XLD_IBUF,
      CLR => CLR_IBUF,
      D => IN_RX_IBUF(7),
      Q => OUT_RX_OBUF(7)
    );
XLD_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => XLD,
      O => XLD_IBUF
    );
end STRUCTURE;
