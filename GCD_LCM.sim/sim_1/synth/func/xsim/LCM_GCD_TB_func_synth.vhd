-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Jan 31 19:14:31 2021
-- Host        : DESKTOP-3EDLCTR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Usuario/Desktop/2021-1/barbosa/GCD_LCM/GCD_LCM.sim/sim_1/synth/func/xsim/LCM_GCD_TB_func_synth.vhd
-- Design      : LCM_GCD
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
    FEQ : out STD_LOGIC;
    FMAX : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \OUT_RY_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_PRESENT_S_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_PRESENT_S_reg[3]_0\ : in STD_LOGIC;
    \FSM_onehot_PRESENT_S_reg[6]\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    EQ_reg_i_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    EQ_reg_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end COMPARADOR;

architecture STRUCTURE of COMPARADOR is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \EQ0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \EQ0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \EQ0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal EQ1_carry_n_1 : STD_LOGIC;
  signal EQ1_carry_n_2 : STD_LOGIC;
  signal EQ1_carry_n_3 : STD_LOGIC;
  signal \NLW_EQ0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_EQ1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \EQ0_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of EQ1_carry : label is 11;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of EQ_reg : label is "LDC";
begin
  CO(0) <= \^co\(0);
\EQ0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \OUT_RY_reg[6]\(0),
      CO(2) => \EQ0_inferred__0/i__carry_n_1\,
      CO(1) => \EQ0_inferred__0/i__carry_n_2\,
      CO(0) => \EQ0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => EQ_reg_i_2(3 downto 0),
      O(3 downto 0) => \NLW_EQ0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => EQ_reg_i_2_0(3 downto 0)
    );
EQ1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => EQ1_carry_n_1,
      CO(1) => EQ1_carry_n_2,
      CO(0) => EQ1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_EQ1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
EQ_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_PRESENT_S_reg[3]_0\,
      D => \FSM_onehot_PRESENT_S_reg[3]\,
      G => \FSM_onehot_PRESENT_S_reg[3]\,
      GE => '1',
      Q => FEQ
    );
MAX_reg: unisim.vcomponents.LDCP
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_PRESENT_S_reg[6]\,
      D => '0',
      G => \FSM_onehot_PRESENT_S_reg[3]\,
      PRE => \^co\(0),
      Q => FMAX
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REG_ABSELECT is
  port (
    S_RO : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \A_RO_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \B_RO_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \B_RO_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \A_RO_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \B_RO_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    SEL0_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \plusOp_carry__0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \plusOp_carry__0_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \B_RO_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end REG_ABSELECT;

architecture STRUCTURE of REG_ABSELECT is
  signal A_RO : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \^a_ro_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal B_RO : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \^b_ro_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  \A_RO_reg[6]_0\(6 downto 0) <= \^a_ro_reg[6]_0\(6 downto 0);
  \B_RO_reg[6]_0\(6 downto 0) <= \^b_ro_reg[6]_0\(6 downto 0);
\A_RO_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(0),
      Q => \^a_ro_reg[6]_0\(0)
    );
\A_RO_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(1),
      Q => \^a_ro_reg[6]_0\(1)
    );
\A_RO_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(2),
      Q => \^a_ro_reg[6]_0\(2)
    );
\A_RO_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(3),
      Q => \^a_ro_reg[6]_0\(3)
    );
\A_RO_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(4),
      Q => \^a_ro_reg[6]_0\(4)
    );
\A_RO_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(5),
      Q => \^a_ro_reg[6]_0\(5)
    );
\A_RO_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(6),
      Q => \^a_ro_reg[6]_0\(6)
    );
\A_RO_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => D(7),
      Q => A_RO(7)
    );
\B_RO_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(0),
      Q => \^b_ro_reg[6]_0\(0)
    );
\B_RO_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(1),
      Q => \^b_ro_reg[6]_0\(1)
    );
\B_RO_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(2),
      Q => \^b_ro_reg[6]_0\(2)
    );
\B_RO_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(3),
      Q => \^b_ro_reg[6]_0\(3)
    );
\B_RO_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(4),
      Q => \^b_ro_reg[6]_0\(4)
    );
\B_RO_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(5),
      Q => \^b_ro_reg[6]_0\(5)
    );
\B_RO_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(6),
      Q => \^b_ro_reg[6]_0\(6)
    );
\B_RO_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => \B_RO_reg[7]_1\(7),
      Q => B_RO(7)
    );
S_RO_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q(0),
      CLR => AR(0),
      D => SEL0_IBUF,
      Q => S_RO
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_RO(7),
      I1 => \plusOp_carry__0\(7),
      O => S(3)
    );
\plusOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_RO(7),
      I1 => \plusOp_carry__0_0\(7),
      O => \B_RO_reg[7]_0\(3)
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a_ro_reg[6]_0\(6),
      I1 => \plusOp_carry__0\(6),
      O => S(2)
    );
\plusOp_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_ro_reg[6]_0\(6),
      I1 => \plusOp_carry__0_0\(6),
      O => \B_RO_reg[7]_0\(2)
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a_ro_reg[6]_0\(5),
      I1 => \plusOp_carry__0\(5),
      O => S(1)
    );
\plusOp_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_ro_reg[6]_0\(5),
      I1 => \plusOp_carry__0_0\(5),
      O => \B_RO_reg[7]_0\(1)
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a_ro_reg[6]_0\(4),
      I1 => \plusOp_carry__0\(4),
      O => S(0)
    );
\plusOp_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_ro_reg[6]_0\(4),
      I1 => \plusOp_carry__0_0\(4),
      O => \B_RO_reg[7]_0\(0)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a_ro_reg[6]_0\(3),
      I1 => \plusOp_carry__0\(3),
      O => \A_RO_reg[3]_0\(3)
    );
\plusOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_ro_reg[6]_0\(3),
      I1 => \plusOp_carry__0_0\(3),
      O => \B_RO_reg[3]_0\(3)
    );
plusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a_ro_reg[6]_0\(2),
      I1 => \plusOp_carry__0\(2),
      O => \A_RO_reg[3]_0\(2)
    );
\plusOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_ro_reg[6]_0\(2),
      I1 => \plusOp_carry__0_0\(2),
      O => \B_RO_reg[3]_0\(2)
    );
plusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a_ro_reg[6]_0\(1),
      I1 => \plusOp_carry__0\(1),
      O => \A_RO_reg[3]_0\(1)
    );
\plusOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_ro_reg[6]_0\(1),
      I1 => \plusOp_carry__0_0\(1),
      O => \B_RO_reg[3]_0\(1)
    );
plusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a_ro_reg[6]_0\(0),
      I1 => \plusOp_carry__0\(0),
      O => \A_RO_reg[3]_0\(0)
    );
\plusOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_ro_reg[6]_0\(0),
      I1 => \plusOp_carry__0_0\(0),
      O => \B_RO_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REG_OUT is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_G_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \OUT_G_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end REG_OUT;

architecture STRUCTURE of REG_OUT is
begin
\OUT_G_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(0),
      Q => Q(0)
    );
\OUT_G_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(1),
      Q => Q(1)
    );
\OUT_G_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(2),
      Q => Q(2)
    );
\OUT_G_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(3),
      Q => Q(3)
    );
\OUT_G_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(4),
      Q => Q(4)
    );
\OUT_G_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(5),
      Q => Q(5)
    );
\OUT_G_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(6),
      Q => Q(6)
    );
\OUT_G_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \OUT_G_reg[7]_0\(0),
      CLR => AR(0),
      D => \OUT_G_reg[7]_1\(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REG_X is
  port (
    \EQ0_inferred__0/i__carry\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_RX_reg[3]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RX_reg[4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \OUT_RX_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RX_reg[4]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    EQ_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \minusOp_carry__0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MAX_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end REG_X;

architecture STRUCTURE of REG_X is
  signal EQ_reg_i_3_n_0 : STD_LOGIC;
  signal EQ_reg_i_4_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
EQ1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(6),
      I1 => \minusOp_carry__0\(6),
      I2 => \minusOp_carry__0\(7),
      I3 => \^q\(7),
      O => DI(3)
    );
EQ1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(4),
      I1 => \minusOp_carry__0\(4),
      I2 => \minusOp_carry__0\(5),
      I3 => \^q\(5),
      O => DI(2)
    );
EQ1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => \minusOp_carry__0\(2),
      I2 => \minusOp_carry__0\(3),
      I3 => \^q\(3),
      O => DI(1)
    );
EQ1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \minusOp_carry__0\(0),
      I2 => \minusOp_carry__0\(1),
      I3 => \^q\(1),
      O => DI(0)
    );
EQ1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \minusOp_carry__0\(4),
      I2 => \^q\(5),
      I3 => \minusOp_carry__0\(5),
      O => \OUT_RX_reg[4]_1\(2)
    );
EQ1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \minusOp_carry__0\(2),
      I2 => \^q\(3),
      I3 => \minusOp_carry__0\(3),
      O => \OUT_RX_reg[4]_1\(1)
    );
EQ1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \minusOp_carry__0\(0),
      I2 => \^q\(1),
      I3 => \minusOp_carry__0\(1),
      O => \OUT_RX_reg[4]_1\(0)
    );
EQ_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40040000"
    )
        port map (
      I0 => EQ_reg_i_3_n_0,
      I1 => EQ_reg_i_4_n_0,
      I2 => \^q\(3),
      I3 => \minusOp_carry__0\(3),
      I4 => MAX_reg,
      O => \OUT_RX_reg[3]_0\
    );
EQ_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CO(0),
      I1 => EQ_reg(0),
      O => \EQ0_inferred__0/i__carry\
    );
EQ_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \minusOp_carry__0\(6),
      I2 => \^q\(7),
      I3 => \minusOp_carry__0\(7),
      O => EQ_reg_i_3_n_0
    );
EQ_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \minusOp_carry__0\(4),
      I2 => \^q\(5),
      I3 => \minusOp_carry__0\(5),
      O => EQ_reg_i_4_n_0
    );
\OUT_RX_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \^q\(0)
    );
\OUT_RX_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => \^q\(1)
    );
\OUT_RX_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => \^q\(2)
    );
\OUT_RX_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => \^q\(3)
    );
\OUT_RX_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => \^q\(4)
    );
\OUT_RX_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => \^q\(5)
    );
\OUT_RX_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => \^q\(6)
    );
\OUT_RX_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => \^q\(7)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \minusOp_carry__0\(4),
      I2 => \^q\(5),
      I3 => \minusOp_carry__0\(5),
      O => \OUT_RX_reg[4]_0\(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \minusOp_carry__0\(2),
      I2 => \^q\(3),
      I3 => \minusOp_carry__0\(3),
      O => \OUT_RX_reg[4]_0\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \minusOp_carry__0\(0),
      I2 => \^q\(1),
      I3 => \minusOp_carry__0\(1),
      O => \OUT_RX_reg[4]_0\(0)
    );
\minusOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \minusOp_carry__0\(7),
      O => S(3)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \minusOp_carry__0\(6),
      O => S(2)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \minusOp_carry__0\(5),
      O => S(1)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \minusOp_carry__0\(4),
      O => S(0)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \minusOp_carry__0\(3),
      O => \OUT_RX_reg[3]_1\(3)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \minusOp_carry__0\(2),
      O => \OUT_RX_reg[3]_1\(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \minusOp_carry__0\(1),
      O => \OUT_RX_reg[3]_1\(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \minusOp_carry__0\(0),
      O => \OUT_RX_reg[3]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REG_Y is
  port (
    \OUT_RY_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    EQ1_carry : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RY_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \OUT_RY_reg[2]_0\ : out STD_LOGIC;
    \OUT_RY_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RY_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    EQ1_carry_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MAX_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end REG_Y;

architecture STRUCTURE of REG_Y is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
EQ1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(7),
      I1 => EQ1_carry_0(7),
      I2 => \^q\(6),
      I3 => EQ1_carry_0(6),
      O => \OUT_RY_reg[7]_1\(0)
    );
EQ_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => EQ1_carry_0(2),
      I2 => \^q\(1),
      I3 => EQ1_carry_0(1),
      I4 => EQ1_carry_0(0),
      I5 => \^q\(0),
      O => \OUT_RY_reg[2]_0\
    );
MAX_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => MAX_reg(0),
      I1 => CO(0),
      O => EQ1_carry
    );
\OUT_RY_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \^q\(0)
    );
\OUT_RY_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => \^q\(1)
    );
\OUT_RY_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => \^q\(2)
    );
\OUT_RY_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => \^q\(3)
    );
\OUT_RY_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => \^q\(4)
    );
\OUT_RY_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => \^q\(5)
    );
\OUT_RY_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => \^q\(6)
    );
\OUT_RY_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => \^q\(7)
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(6),
      I1 => EQ1_carry_0(6),
      I2 => EQ1_carry_0(7),
      I3 => \^q\(7),
      O => \OUT_RY_reg[6]_0\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(4),
      I1 => EQ1_carry_0(4),
      I2 => EQ1_carry_0(5),
      I3 => \^q\(5),
      O => \OUT_RY_reg[6]_0\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => EQ1_carry_0(2),
      I2 => EQ1_carry_0(3),
      I3 => \^q\(3),
      O => \OUT_RY_reg[6]_0\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => EQ1_carry_0(0),
      I2 => EQ1_carry_0(1),
      I3 => \^q\(1),
      O => \OUT_RY_reg[6]_0\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(7),
      I1 => EQ1_carry_0(7),
      I2 => \^q\(6),
      I3 => EQ1_carry_0(6),
      O => \OUT_RY_reg[7]_0\(0)
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => EQ1_carry_0(7),
      O => S(3)
    );
\minusOp_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => EQ1_carry_0(6),
      O => S(2)
    );
\minusOp_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => EQ1_carry_0(5),
      O => S(1)
    );
\minusOp_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => EQ1_carry_0(4),
      O => S(0)
    );
\minusOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => EQ1_carry_0(3),
      O => \OUT_RY_reg[3]_0\(3)
    );
\minusOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => EQ1_carry_0(2),
      O => \OUT_RY_reg[3]_0\(2)
    );
\minusOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => EQ1_carry_0(1),
      O => \OUT_RY_reg[3]_0\(1)
    );
\minusOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => EQ1_carry_0(0),
      O => \OUT_RY_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RESTADOR_X is
  port (
    minusOp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \OUT_RX_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end RESTADOR_X;

architecture STRUCTURE of RESTADOR_X is
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_minusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
begin
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => minusOp(3 downto 0),
      S(3 downto 0) => \OUT_RX_reg[3]\(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \NLW_minusOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(6 downto 4),
      O(3 downto 0) => minusOp(7 downto 4),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RESTADOR_Y is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RY_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \OUT_RY_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end RESTADOR_Y;

architecture STRUCTURE of RESTADOR_Y is
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_minusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
begin
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => \OUT_RY_reg[3]\(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \NLW_minusOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(6 downto 4),
      O(3 downto 0) => \OUT_RY_reg[6]\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SUMADOR_X is
  port (
    plusOp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_RX_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \OUT_RX_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end SUMADOR_X;

architecture STRUCTURE of SUMADOR_X is
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
begin
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \OUT_RX_reg[7]\(3 downto 0),
      O(3 downto 0) => plusOp(3 downto 0),
      S(3 downto 0) => \OUT_RX_reg[3]\(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \OUT_RX_reg[7]\(6 downto 4),
      O(3 downto 0) => plusOp(7 downto 4),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SUMADOR_Y is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \B_RO_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RY_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \OUT_RY_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RY_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end SUMADOR_Y;

architecture STRUCTURE of SUMADOR_Y is
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
begin
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \OUT_RY_reg[7]\(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => \OUT_RY_reg[3]\(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \OUT_RY_reg[7]\(6 downto 4),
      O(3 downto 0) => \B_RO_reg[6]\(3 downto 0),
      S(3 downto 0) => \OUT_RY_reg[7]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UNIDAD_CONTROL is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \A_RO_reg[6]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_PRESENT_S_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \OUT_RY_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RY_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_RY_reg[7]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \OUT_RY_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    plusOp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \OUT_RX_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    minusOp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GO0_IBUF : in STD_LOGIC;
    FEQ : in STD_LOGIC;
    S_RO : in STD_LOGIC;
    FMAX : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end UNIDAD_CONTROL;

architecture STRUCTURE of UNIDAD_CONTROL is
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
  signal \FSM_onehot_PRESENT_S_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_PRESENT_S_reg_n_0_[9]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \SEL_M1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \SEL_M1_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal SEL_MUX : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_PRESENT_S[9]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[0]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[10]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[1]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[2]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[3]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[4]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[5]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[6]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[7]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[8]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_PRESENT_S_reg[9]\ : label is "test2:00000010000,test3:00000100000,test1:00000000100,done:00000001000,input:00000000010,start:00000000001,restay:00010000000,sumay:01000000000,restax:00001000000,sumax:10000000000,test4:00100000000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \SEL_M1_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \SEL_M1_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \SEL_M1_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \SEL_M1_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \__0/i_\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_PRESENT_S[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[0]\,
      I1 => GO0_IBUF,
      O => \FSM_onehot_PRESENT_S[0]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[8]\,
      I1 => FMAX,
      O => \FSM_onehot_PRESENT_S[10]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[0]\,
      I1 => GO0_IBUF,
      O => \FSM_onehot_PRESENT_S[1]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[9]\,
      I1 => \FSM_onehot_PRESENT_S_reg_n_0_[6]\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_PRESENT_S_reg_n_0_[10]\,
      I4 => \FSM_onehot_PRESENT_S_reg_n_0_[7]\,
      O => \FSM_onehot_PRESENT_S[2]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^q\(1),
      I1 => FEQ,
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[2]\,
      O => \FSM_onehot_PRESENT_S[3]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[2]\,
      I1 => FEQ,
      O => \FSM_onehot_PRESENT_S[4]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[4]\,
      I1 => S_RO,
      O => \FSM_onehot_PRESENT_S[5]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[5]\,
      I1 => FMAX,
      O => \FSM_onehot_PRESENT_S[6]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[5]\,
      I1 => FMAX,
      O => \FSM_onehot_PRESENT_S[7]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[4]\,
      I1 => S_RO,
      O => \FSM_onehot_PRESENT_S[8]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[8]\,
      I1 => FMAX,
      O => \FSM_onehot_PRESENT_S[9]_i_1_n_0\
    );
\FSM_onehot_PRESENT_S_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_PRESENT_S[0]_i_1_n_0\,
      PRE => AR(0),
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[0]\
    );
\FSM_onehot_PRESENT_S_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[10]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[10]\
    );
\FSM_onehot_PRESENT_S_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[1]_i_1_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_PRESENT_S_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[2]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[2]\
    );
\FSM_onehot_PRESENT_S_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[3]_i_1_n_0\,
      Q => \^q\(1)
    );
\FSM_onehot_PRESENT_S_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[4]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[4]\
    );
\FSM_onehot_PRESENT_S_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[5]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[5]\
    );
\FSM_onehot_PRESENT_S_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[6]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[6]\
    );
\FSM_onehot_PRESENT_S_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[7]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[7]\
    );
\FSM_onehot_PRESENT_S_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[8]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[8]\
    );
\FSM_onehot_PRESENT_S_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \FSM_onehot_PRESENT_S[9]_i_1_n_0\,
      Q => \FSM_onehot_PRESENT_S_reg_n_0_[9]\
    );
\OUT_RX[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[6]\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[10]\,
      O => \FSM_onehot_PRESENT_S_reg[6]_0\(0)
    );
\OUT_RY[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => O(0),
      I1 => \OUT_RY_reg[7]_0\(0),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[3]\(0),
      O => D(0)
    );
\OUT_RY[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => O(1),
      I1 => \OUT_RY_reg[7]_0\(1),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[3]\(1),
      O => D(1)
    );
\OUT_RY[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => O(2),
      I1 => \OUT_RY_reg[7]_0\(2),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[3]\(2),
      O => D(2)
    );
\OUT_RY[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => O(3),
      I1 => \OUT_RY_reg[7]_0\(3),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[3]\(3),
      O => D(3)
    );
\OUT_RY[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \OUT_RY_reg[7]\(0),
      I1 => \OUT_RY_reg[7]_0\(4),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[7]_1\(0),
      O => D(4)
    );
\OUT_RY[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \OUT_RY_reg[7]\(1),
      I1 => \OUT_RY_reg[7]_0\(5),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[7]_1\(1),
      O => D(5)
    );
\OUT_RY[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \OUT_RY_reg[7]\(2),
      I1 => \OUT_RY_reg[7]_0\(6),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[7]_1\(2),
      O => D(6)
    );
\OUT_RY[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \OUT_RY_reg[7]\(3),
      I1 => \OUT_RY_reg[7]_0\(7),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => \OUT_RY_reg[7]_1\(3),
      O => D(7)
    );
\PRUEBA_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(0),
      I1 => \OUT_RX_reg[7]\(0),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(0),
      O => \A_RO_reg[6]\(0)
    );
\PRUEBA_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(1),
      I1 => \OUT_RX_reg[7]\(1),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(1),
      O => \A_RO_reg[6]\(1)
    );
\PRUEBA_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(2),
      I1 => \OUT_RX_reg[7]\(2),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(2),
      O => \A_RO_reg[6]\(2)
    );
\PRUEBA_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(3),
      I1 => \OUT_RX_reg[7]\(3),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(3),
      O => \A_RO_reg[6]\(3)
    );
\PRUEBA_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(4),
      I1 => \OUT_RX_reg[7]\(4),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(4),
      O => \A_RO_reg[6]\(4)
    );
\PRUEBA_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(5),
      I1 => \OUT_RX_reg[7]\(5),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(5),
      O => \A_RO_reg[6]\(5)
    );
\PRUEBA_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(6),
      I1 => \OUT_RX_reg[7]\(6),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(6),
      O => \A_RO_reg[6]\(6)
    );
\PRUEBA_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => plusOp(7),
      I1 => \OUT_RX_reg[7]\(7),
      I2 => SEL_MUX(0),
      I3 => SEL_MUX(1),
      I4 => minusOp(7),
      O => \A_RO_reg[6]\(7)
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
      Q => SEL_MUX(0)
    );
\SEL_M1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[9]\,
      I1 => \^q\(0),
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
      Q => SEL_MUX(1)
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
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_PRESENT_S_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_PRESENT_S_reg_n_0_[9]\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LCM_GCD is
  port (
    AF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    R : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PRUEBA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SEL0 : in STD_LOGIC;
    CLR0 : in STD_LOGIC;
    GO0 : in STD_LOGIC;
    CLK0 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of LCM_GCD : entity is true;
end LCM_GCD;

architecture STRUCTURE of LCM_GCD is
  signal AF_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal A_RO : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal BF_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_RO : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal CLK0_IBUF : STD_LOGIC;
  signal CLK0_IBUF_BUFG : STD_LOGIC;
  signal CLR0_IBUF : STD_LOGIC;
  signal COMP_n_2 : STD_LOGIC;
  signal COMP_n_3 : STD_LOGIC;
  signal FEQ : STD_LOGIC;
  signal FMAX : STD_LOGIC;
  signal GO0_IBUF : STD_LOGIC;
  signal IN_RY : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal LDO : STD_LOGIC;
  signal LDR0 : STD_LOGIC;
  signal LDRX0 : STD_LOGIC;
  signal LDRY0 : STD_LOGIC;
  signal OUT_RX : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal OUT_RY : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PRUEBA_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal REGX0_n_0 : STD_LOGIC;
  signal REGX0_n_1 : STD_LOGIC;
  signal REGX0_n_13 : STD_LOGIC;
  signal REGX0_n_14 : STD_LOGIC;
  signal REGX0_n_15 : STD_LOGIC;
  signal REGX0_n_16 : STD_LOGIC;
  signal REGX0_n_17 : STD_LOGIC;
  signal REGX0_n_18 : STD_LOGIC;
  signal REGX0_n_19 : STD_LOGIC;
  signal REGX0_n_2 : STD_LOGIC;
  signal REGX0_n_20 : STD_LOGIC;
  signal REGX0_n_21 : STD_LOGIC;
  signal REGX0_n_22 : STD_LOGIC;
  signal REGX0_n_23 : STD_LOGIC;
  signal REGX0_n_24 : STD_LOGIC;
  signal REGX0_n_25 : STD_LOGIC;
  signal REGX0_n_26 : STD_LOGIC;
  signal REGX0_n_27 : STD_LOGIC;
  signal REGX0_n_3 : STD_LOGIC;
  signal REGX0_n_4 : STD_LOGIC;
  signal REGY0_n_0 : STD_LOGIC;
  signal REGY0_n_1 : STD_LOGIC;
  signal REGY0_n_12 : STD_LOGIC;
  signal REGY0_n_13 : STD_LOGIC;
  signal REGY0_n_14 : STD_LOGIC;
  signal REGY0_n_15 : STD_LOGIC;
  signal REGY0_n_16 : STD_LOGIC;
  signal REGY0_n_17 : STD_LOGIC;
  signal REGY0_n_18 : STD_LOGIC;
  signal REGY0_n_19 : STD_LOGIC;
  signal REGY0_n_2 : STD_LOGIC;
  signal REGY0_n_20 : STD_LOGIC;
  signal REGY0_n_21 : STD_LOGIC;
  signal REGY0_n_22 : STD_LOGIC;
  signal REGY0_n_23 : STD_LOGIC;
  signal REGY0_n_3 : STD_LOGIC;
  signal REG_ABSELECT0_n_1 : STD_LOGIC;
  signal REG_ABSELECT0_n_12 : STD_LOGIC;
  signal REG_ABSELECT0_n_13 : STD_LOGIC;
  signal REG_ABSELECT0_n_14 : STD_LOGIC;
  signal REG_ABSELECT0_n_15 : STD_LOGIC;
  signal REG_ABSELECT0_n_2 : STD_LOGIC;
  signal REG_ABSELECT0_n_23 : STD_LOGIC;
  signal REG_ABSELECT0_n_24 : STD_LOGIC;
  signal REG_ABSELECT0_n_25 : STD_LOGIC;
  signal REG_ABSELECT0_n_26 : STD_LOGIC;
  signal REG_ABSELECT0_n_27 : STD_LOGIC;
  signal REG_ABSELECT0_n_28 : STD_LOGIC;
  signal REG_ABSELECT0_n_29 : STD_LOGIC;
  signal REG_ABSELECT0_n_3 : STD_LOGIC;
  signal REG_ABSELECT0_n_30 : STD_LOGIC;
  signal REG_ABSELECT0_n_4 : STD_LOGIC;
  signal RSY_n_0 : STD_LOGIC;
  signal RSY_n_1 : STD_LOGIC;
  signal RSY_n_2 : STD_LOGIC;
  signal RSY_n_3 : STD_LOGIC;
  signal RSY_n_4 : STD_LOGIC;
  signal RSY_n_5 : STD_LOGIC;
  signal RSY_n_6 : STD_LOGIC;
  signal RSY_n_7 : STD_LOGIC;
  signal R_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SEL0_IBUF : STD_LOGIC;
  signal SY_n_0 : STD_LOGIC;
  signal SY_n_1 : STD_LOGIC;
  signal SY_n_2 : STD_LOGIC;
  signal SY_n_3 : STD_LOGIC;
  signal SY_n_4 : STD_LOGIC;
  signal SY_n_5 : STD_LOGIC;
  signal SY_n_6 : STD_LOGIC;
  signal SY_n_7 : STD_LOGIC;
  signal S_RO : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\AF_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(0),
      O => AF_IBUF(0)
    );
\AF_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(1),
      O => AF_IBUF(1)
    );
\AF_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(2),
      O => AF_IBUF(2)
    );
\AF_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(3),
      O => AF_IBUF(3)
    );
\AF_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(4),
      O => AF_IBUF(4)
    );
\AF_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(5),
      O => AF_IBUF(5)
    );
\AF_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(6),
      O => AF_IBUF(6)
    );
\AF_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AF(7),
      O => AF_IBUF(7)
    );
\BF_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(0),
      O => BF_IBUF(0)
    );
\BF_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(1),
      O => BF_IBUF(1)
    );
\BF_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(2),
      O => BF_IBUF(2)
    );
\BF_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(3),
      O => BF_IBUF(3)
    );
\BF_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(4),
      O => BF_IBUF(4)
    );
\BF_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(5),
      O => BF_IBUF(5)
    );
\BF_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(6),
      O => BF_IBUF(6)
    );
\BF_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BF(7),
      O => BF_IBUF(7)
    );
CLK0_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK0_IBUF,
      O => CLK0_IBUF_BUFG
    );
CLK0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK0,
      O => CLK0_IBUF
    );
CLR0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR0,
      O => CLR0_IBUF
    );
COMP: entity work.COMPARADOR
     port map (
      CO(0) => COMP_n_2,
      DI(3) => REGX0_n_1,
      DI(2) => REGX0_n_2,
      DI(1) => REGX0_n_3,
      DI(0) => REGX0_n_4,
      EQ_reg_i_2(3) => REGY0_n_0,
      EQ_reg_i_2(2) => REGY0_n_1,
      EQ_reg_i_2(1) => REGY0_n_2,
      EQ_reg_i_2(0) => REGY0_n_3,
      EQ_reg_i_2_0(3) => REGY0_n_17,
      EQ_reg_i_2_0(2) => REGX0_n_18,
      EQ_reg_i_2_0(1) => REGX0_n_19,
      EQ_reg_i_2_0(0) => REGX0_n_20,
      FEQ => FEQ,
      FMAX => FMAX,
      \FSM_onehot_PRESENT_S_reg[3]\ => REGX0_n_13,
      \FSM_onehot_PRESENT_S_reg[3]_0\ => REGX0_n_0,
      \FSM_onehot_PRESENT_S_reg[6]\ => REGY0_n_12,
      \OUT_RY_reg[6]\(0) => COMP_n_3,
      S(3) => REGY0_n_23,
      S(2) => REGX0_n_25,
      S(1) => REGX0_n_26,
      S(0) => REGX0_n_27
    );
GO0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => GO0,
      O => GO0_IBUF
    );
\PRUEBA_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(0),
      O => PRUEBA(0)
    );
\PRUEBA_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(1),
      O => PRUEBA(1)
    );
\PRUEBA_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(2),
      O => PRUEBA(2)
    );
\PRUEBA_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(3),
      O => PRUEBA(3)
    );
\PRUEBA_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(4),
      O => PRUEBA(4)
    );
\PRUEBA_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(5),
      O => PRUEBA(5)
    );
\PRUEBA_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(6),
      O => PRUEBA(6)
    );
\PRUEBA_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PRUEBA_OBUF(7),
      O => PRUEBA(7)
    );
REGO0: entity work.REG_OUT
     port map (
      AR(0) => CLR0_IBUF,
      CLK => CLK0_IBUF_BUFG,
      \OUT_G_reg[7]_0\(0) => LDO,
      \OUT_G_reg[7]_1\(7 downto 0) => OUT_RX(7 downto 0),
      Q(7 downto 0) => R_OBUF(7 downto 0)
    );
REGX0: entity work.REG_X
     port map (
      AR(0) => CLR0_IBUF,
      CLK => CLK0_IBUF_BUFG,
      CO(0) => COMP_n_2,
      D(7 downto 0) => PRUEBA_OBUF(7 downto 0),
      DI(3) => REGX0_n_1,
      DI(2) => REGX0_n_2,
      DI(1) => REGX0_n_3,
      DI(0) => REGX0_n_4,
      E(0) => LDRX0,
      \EQ0_inferred__0/i__carry\ => REGX0_n_0,
      EQ_reg(0) => COMP_n_3,
      MAX_reg => REGY0_n_18,
      \OUT_RX_reg[3]_0\ => REGX0_n_13,
      \OUT_RX_reg[3]_1\(3) => REGX0_n_21,
      \OUT_RX_reg[3]_1\(2) => REGX0_n_22,
      \OUT_RX_reg[3]_1\(1) => REGX0_n_23,
      \OUT_RX_reg[3]_1\(0) => REGX0_n_24,
      \OUT_RX_reg[4]_0\(2) => REGX0_n_18,
      \OUT_RX_reg[4]_0\(1) => REGX0_n_19,
      \OUT_RX_reg[4]_0\(0) => REGX0_n_20,
      \OUT_RX_reg[4]_1\(2) => REGX0_n_25,
      \OUT_RX_reg[4]_1\(1) => REGX0_n_26,
      \OUT_RX_reg[4]_1\(0) => REGX0_n_27,
      Q(7 downto 0) => OUT_RX(7 downto 0),
      S(3) => REGX0_n_14,
      S(2) => REGX0_n_15,
      S(1) => REGX0_n_16,
      S(0) => REGX0_n_17,
      \minusOp_carry__0\(7 downto 0) => OUT_RY(7 downto 0)
    );
REGY0: entity work.REG_Y
     port map (
      AR(0) => CLR0_IBUF,
      CLK => CLK0_IBUF_BUFG,
      CO(0) => COMP_n_2,
      D(7 downto 0) => IN_RY(7 downto 0),
      E(0) => LDRY0,
      EQ1_carry => REGY0_n_12,
      EQ1_carry_0(7 downto 0) => OUT_RX(7 downto 0),
      MAX_reg(0) => COMP_n_3,
      \OUT_RY_reg[2]_0\ => REGY0_n_18,
      \OUT_RY_reg[3]_0\(3) => REGY0_n_19,
      \OUT_RY_reg[3]_0\(2) => REGY0_n_20,
      \OUT_RY_reg[3]_0\(1) => REGY0_n_21,
      \OUT_RY_reg[3]_0\(0) => REGY0_n_22,
      \OUT_RY_reg[6]_0\(3) => REGY0_n_0,
      \OUT_RY_reg[6]_0\(2) => REGY0_n_1,
      \OUT_RY_reg[6]_0\(1) => REGY0_n_2,
      \OUT_RY_reg[6]_0\(0) => REGY0_n_3,
      \OUT_RY_reg[7]_0\(0) => REGY0_n_17,
      \OUT_RY_reg[7]_1\(0) => REGY0_n_23,
      Q(7 downto 0) => OUT_RY(7 downto 0),
      S(3) => REGY0_n_13,
      S(2) => REGY0_n_14,
      S(1) => REGY0_n_15,
      S(0) => REGY0_n_16
    );
REG_ABSELECT0: entity work.REG_ABSELECT
     port map (
      AR(0) => CLR0_IBUF,
      \A_RO_reg[3]_0\(3) => REG_ABSELECT0_n_23,
      \A_RO_reg[3]_0\(2) => REG_ABSELECT0_n_24,
      \A_RO_reg[3]_0\(1) => REG_ABSELECT0_n_25,
      \A_RO_reg[3]_0\(0) => REG_ABSELECT0_n_26,
      \A_RO_reg[6]_0\(6 downto 0) => A_RO(6 downto 0),
      \B_RO_reg[3]_0\(3) => REG_ABSELECT0_n_27,
      \B_RO_reg[3]_0\(2) => REG_ABSELECT0_n_28,
      \B_RO_reg[3]_0\(1) => REG_ABSELECT0_n_29,
      \B_RO_reg[3]_0\(0) => REG_ABSELECT0_n_30,
      \B_RO_reg[6]_0\(6 downto 0) => B_RO(6 downto 0),
      \B_RO_reg[7]_0\(3) => REG_ABSELECT0_n_12,
      \B_RO_reg[7]_0\(2) => REG_ABSELECT0_n_13,
      \B_RO_reg[7]_0\(1) => REG_ABSELECT0_n_14,
      \B_RO_reg[7]_0\(0) => REG_ABSELECT0_n_15,
      \B_RO_reg[7]_1\(7 downto 0) => BF_IBUF(7 downto 0),
      CLK => CLK0_IBUF_BUFG,
      D(7 downto 0) => AF_IBUF(7 downto 0),
      Q(0) => LDR0,
      S(3) => REG_ABSELECT0_n_1,
      S(2) => REG_ABSELECT0_n_2,
      S(1) => REG_ABSELECT0_n_3,
      S(0) => REG_ABSELECT0_n_4,
      SEL0_IBUF => SEL0_IBUF,
      S_RO => S_RO,
      \plusOp_carry__0\(7 downto 0) => OUT_RX(7 downto 0),
      \plusOp_carry__0_0\(7 downto 0) => OUT_RY(7 downto 0)
    );
RSX: entity work.RESTADOR_X
     port map (
      \OUT_RX_reg[3]\(3) => REGX0_n_21,
      \OUT_RX_reg[3]\(2) => REGX0_n_22,
      \OUT_RX_reg[3]\(1) => REGX0_n_23,
      \OUT_RX_reg[3]\(0) => REGX0_n_24,
      Q(6 downto 0) => OUT_RX(6 downto 0),
      S(3) => REGX0_n_14,
      S(2) => REGX0_n_15,
      S(1) => REGX0_n_16,
      S(0) => REGX0_n_17,
      minusOp(7 downto 0) => minusOp(7 downto 0)
    );
RSY: entity work.RESTADOR_Y
     port map (
      O(3) => RSY_n_0,
      O(2) => RSY_n_1,
      O(1) => RSY_n_2,
      O(0) => RSY_n_3,
      \OUT_RY_reg[3]\(3) => REGY0_n_19,
      \OUT_RY_reg[3]\(2) => REGY0_n_20,
      \OUT_RY_reg[3]\(1) => REGY0_n_21,
      \OUT_RY_reg[3]\(0) => REGY0_n_22,
      \OUT_RY_reg[6]\(3) => RSY_n_4,
      \OUT_RY_reg[6]\(2) => RSY_n_5,
      \OUT_RY_reg[6]\(1) => RSY_n_6,
      \OUT_RY_reg[6]\(0) => RSY_n_7,
      Q(6 downto 0) => OUT_RY(6 downto 0),
      S(3) => REGY0_n_13,
      S(2) => REGY0_n_14,
      S(1) => REGY0_n_15,
      S(0) => REGY0_n_16
    );
\R_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(0),
      O => R(0)
    );
\R_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(1),
      O => R(1)
    );
\R_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(2),
      O => R(2)
    );
\R_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(3),
      O => R(3)
    );
\R_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(4),
      O => R(4)
    );
\R_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(5),
      O => R(5)
    );
\R_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(6),
      O => R(6)
    );
\R_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(7),
      O => R(7)
    );
SEL0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SEL0,
      O => SEL0_IBUF
    );
SX: entity work.SUMADOR_X
     port map (
      \OUT_RX_reg[3]\(3) => REG_ABSELECT0_n_23,
      \OUT_RX_reg[3]\(2) => REG_ABSELECT0_n_24,
      \OUT_RX_reg[3]\(1) => REG_ABSELECT0_n_25,
      \OUT_RX_reg[3]\(0) => REG_ABSELECT0_n_26,
      \OUT_RX_reg[7]\(6 downto 0) => A_RO(6 downto 0),
      S(3) => REG_ABSELECT0_n_1,
      S(2) => REG_ABSELECT0_n_2,
      S(1) => REG_ABSELECT0_n_3,
      S(0) => REG_ABSELECT0_n_4,
      plusOp(7 downto 0) => plusOp(7 downto 0)
    );
SY: entity work.SUMADOR_Y
     port map (
      \B_RO_reg[6]\(3) => SY_n_4,
      \B_RO_reg[6]\(2) => SY_n_5,
      \B_RO_reg[6]\(1) => SY_n_6,
      \B_RO_reg[6]\(0) => SY_n_7,
      O(3) => SY_n_0,
      O(2) => SY_n_1,
      O(1) => SY_n_2,
      O(0) => SY_n_3,
      \OUT_RY_reg[3]\(3) => REG_ABSELECT0_n_27,
      \OUT_RY_reg[3]\(2) => REG_ABSELECT0_n_28,
      \OUT_RY_reg[3]\(1) => REG_ABSELECT0_n_29,
      \OUT_RY_reg[3]\(0) => REG_ABSELECT0_n_30,
      \OUT_RY_reg[7]\(6 downto 0) => B_RO(6 downto 0),
      \OUT_RY_reg[7]_0\(3) => REG_ABSELECT0_n_12,
      \OUT_RY_reg[7]_0\(2) => REG_ABSELECT0_n_13,
      \OUT_RY_reg[7]_0\(1) => REG_ABSELECT0_n_14,
      \OUT_RY_reg[7]_0\(0) => REG_ABSELECT0_n_15
    );
UC: entity work.UNIDAD_CONTROL
     port map (
      AR(0) => CLR0_IBUF,
      \A_RO_reg[6]\(7 downto 0) => PRUEBA_OBUF(7 downto 0),
      CLK => CLK0_IBUF_BUFG,
      D(7 downto 0) => IN_RY(7 downto 0),
      E(0) => LDRY0,
      FEQ => FEQ,
      FMAX => FMAX,
      \FSM_onehot_PRESENT_S_reg[6]_0\(0) => LDRX0,
      GO0_IBUF => GO0_IBUF,
      O(3) => SY_n_0,
      O(2) => SY_n_1,
      O(1) => SY_n_2,
      O(0) => SY_n_3,
      \OUT_RX_reg[7]\(7 downto 0) => AF_IBUF(7 downto 0),
      \OUT_RY_reg[3]\(3) => RSY_n_0,
      \OUT_RY_reg[3]\(2) => RSY_n_1,
      \OUT_RY_reg[3]\(1) => RSY_n_2,
      \OUT_RY_reg[3]\(0) => RSY_n_3,
      \OUT_RY_reg[7]\(3) => SY_n_4,
      \OUT_RY_reg[7]\(2) => SY_n_5,
      \OUT_RY_reg[7]\(1) => SY_n_6,
      \OUT_RY_reg[7]\(0) => SY_n_7,
      \OUT_RY_reg[7]_0\(7 downto 0) => BF_IBUF(7 downto 0),
      \OUT_RY_reg[7]_1\(3) => RSY_n_4,
      \OUT_RY_reg[7]_1\(2) => RSY_n_5,
      \OUT_RY_reg[7]_1\(1) => RSY_n_6,
      \OUT_RY_reg[7]_1\(0) => RSY_n_7,
      Q(1) => LDO,
      Q(0) => LDR0,
      S_RO => S_RO,
      minusOp(7 downto 0) => minusOp(7 downto 0),
      plusOp(7 downto 0) => plusOp(7 downto 0)
    );
end STRUCTURE;
