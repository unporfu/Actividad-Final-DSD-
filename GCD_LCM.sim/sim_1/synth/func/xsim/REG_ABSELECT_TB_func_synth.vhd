-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jan 29 17:56:18 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/REG_ABSELECT_TB_func_synth.vhd
-- Design      : REG_ABSELECT
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REG_ABSELECT is
  port (
    A_R : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_R : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_R : in STD_LOGIC;
    A_RO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    B_RO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_RO : out STD_LOGIC;
    REG_ABSELECTLD : in STD_LOGIC;
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of REG_ABSELECT : entity is true;
end REG_ABSELECT;

architecture STRUCTURE of REG_ABSELECT is
  signal A_RO_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal A_R_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_RO_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_R_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal REG_ABSELECTLD_IBUF : STD_LOGIC;
  signal S_RO_OBUF : STD_LOGIC;
  signal S_R_IBUF : STD_LOGIC;
begin
\A_RO_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(0),
      O => A_RO(0)
    );
\A_RO_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(1),
      O => A_RO(1)
    );
\A_RO_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(2),
      O => A_RO(2)
    );
\A_RO_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(3),
      O => A_RO(3)
    );
\A_RO_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(4),
      O => A_RO(4)
    );
\A_RO_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(5),
      O => A_RO(5)
    );
\A_RO_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(6),
      O => A_RO(6)
    );
\A_RO_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_RO_OBUF(7),
      O => A_RO(7)
    );
\A_RO_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(0),
      Q => A_RO_OBUF(0)
    );
\A_RO_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(1),
      Q => A_RO_OBUF(1)
    );
\A_RO_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(2),
      Q => A_RO_OBUF(2)
    );
\A_RO_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(3),
      Q => A_RO_OBUF(3)
    );
\A_RO_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(4),
      Q => A_RO_OBUF(4)
    );
\A_RO_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(5),
      Q => A_RO_OBUF(5)
    );
\A_RO_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(6),
      Q => A_RO_OBUF(6)
    );
\A_RO_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => A_R_IBUF(7),
      Q => A_RO_OBUF(7)
    );
\A_R_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(0),
      O => A_R_IBUF(0)
    );
\A_R_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(1),
      O => A_R_IBUF(1)
    );
\A_R_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(2),
      O => A_R_IBUF(2)
    );
\A_R_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(3),
      O => A_R_IBUF(3)
    );
\A_R_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(4),
      O => A_R_IBUF(4)
    );
\A_R_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(5),
      O => A_R_IBUF(5)
    );
\A_R_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(6),
      O => A_R_IBUF(6)
    );
\A_R_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_R(7),
      O => A_R_IBUF(7)
    );
\B_RO_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(0),
      O => B_RO(0)
    );
\B_RO_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(1),
      O => B_RO(1)
    );
\B_RO_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(2),
      O => B_RO(2)
    );
\B_RO_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(3),
      O => B_RO(3)
    );
\B_RO_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(4),
      O => B_RO(4)
    );
\B_RO_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(5),
      O => B_RO(5)
    );
\B_RO_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(6),
      O => B_RO(6)
    );
\B_RO_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_RO_OBUF(7),
      O => B_RO(7)
    );
\B_RO_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(0),
      Q => B_RO_OBUF(0)
    );
\B_RO_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(1),
      Q => B_RO_OBUF(1)
    );
\B_RO_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(2),
      Q => B_RO_OBUF(2)
    );
\B_RO_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(3),
      Q => B_RO_OBUF(3)
    );
\B_RO_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(4),
      Q => B_RO_OBUF(4)
    );
\B_RO_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(5),
      Q => B_RO_OBUF(5)
    );
\B_RO_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(6),
      Q => B_RO_OBUF(6)
    );
\B_RO_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => B_R_IBUF(7),
      Q => B_RO_OBUF(7)
    );
\B_R_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(0),
      O => B_R_IBUF(0)
    );
\B_R_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(1),
      O => B_R_IBUF(1)
    );
\B_R_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(2),
      O => B_R_IBUF(2)
    );
\B_R_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(3),
      O => B_R_IBUF(3)
    );
\B_R_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(4),
      O => B_R_IBUF(4)
    );
\B_R_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(5),
      O => B_R_IBUF(5)
    );
\B_R_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(6),
      O => B_R_IBUF(6)
    );
\B_R_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_R(7),
      O => B_R_IBUF(7)
    );
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
REG_ABSELECTLD_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => REG_ABSELECTLD,
      O => REG_ABSELECTLD_IBUF
    );
S_RO_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => S_RO_OBUF,
      O => S_RO
    );
S_RO_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => REG_ABSELECTLD_IBUF,
      CLR => CLR_IBUF,
      D => S_R_IBUF,
      Q => S_RO_OBUF
    );
S_R_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S_R,
      O => S_R_IBUF
    );
end STRUCTURE;
