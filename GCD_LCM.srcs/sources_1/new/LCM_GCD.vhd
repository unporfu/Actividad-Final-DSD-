library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCM_GCD is
   
   port(

    AF,BF     : in std_logic_vector(7 downto 0);
    R         : out std_logic_vector(7 downto 0);
    PRUEBA    : out std_logic_vector(7 downto 0);
    SEL0,CLR0,GO0,CLK0   : in std_logic
        );

end LCM_GCD;

architecture Behavioral of LCM_GCD is

component MUX_X
port(

    A     : in std_logic_vector(7 downto 0);
    X_2   : in std_logic_vector(7 downto 0);
    X_3   : in std_logic_vector(7 downto 0);
    SEL   : in std_logic_vector (1 downto 0); 
    X : out std_logic_vector(7 downto 0)
    
    );

end component;

component MUX_Y

port(

    B     : in std_logic_vector(7 downto 0);
    Y_2   : in std_logic_vector(7 downto 0);
    Y_3   : in std_logic_vector(7 downto 0);
    SEL   : in std_logic_vector (1 downto 0); 
    Y : out std_logic_vector(7 downto 0)
    
    );

end component;

component REG_ABSELECT

port(
    A_R   : in std_logic_vector(7 downto 0);
    B_R   : in std_logic_vector(7 downto 0);
    S_R   : in std_logic;
    A_RO  : out std_logic_vector(7 downto 0);
    B_RO  : out std_logic_vector(7 downto 0);
    S_RO  : out std_logic;
    REG_ABSELECTLD,CLR,CLK   : in std_logic
    );
    
end component;

component REG_OUT

port(
    X_OUT           : in std_logic_vector(7 downto 0);
    OUT_G           : out std_logic_vector(7 downto 0);
    OUTLD,CLR,CLK   : in std_logic
    );

end component;

component REG_X

port(
    IN_RX   : in std_logic_vector(7 downto 0);
    OUT_RX  : out std_logic_vector(7 downto 0);
    XLD,CLR,CLK   : in std_logic
    );

end component;

component REG_Y

port(
    IN_RY   : in std_logic_vector(7 downto 0);
    OUT_RY  : out std_logic_vector(7 downto 0);
    YLD,CLR,CLK   : in std_logic
    );
    
end component;

component RESTADOR_X

PORT( 
             Y_M : IN std_logic_vector(7 DOWNTO 0);
             X_M : IN std_logic_vector(7 DOWNTO 0);  
             XO_M : OUT std_logic_vector(7 DOWNTO 0));

end component;

component RESTADOR_Y

PORT( 
             Y_M : IN std_logic_vector(7 DOWNTO 0);
             X_M : IN std_logic_vector(7 DOWNTO 0);  
             YO_M : OUT std_logic_vector(7 DOWNTO 0));
             
end component;

component SUMADOR_X

PORT( 
             X_P : IN std_logic_vector(7 DOWNTO 0); 
             A_P : IN std_logic_vector(7 DOWNTO 0);  
             XO_P : OUT std_logic_vector(7 DOWNTO 0));

end component;

component SUMADOR_Y

PORT( 
             Y_P : IN std_logic_vector(7 DOWNTO 0); 
             B_P : IN std_logic_vector(7 DOWNTO 0);  
             YO_P : OUT std_logic_vector(7 DOWNTO 0));

end component;

component COMPARADOR

PORT( 
             X_C : IN std_logic_vector(7 DOWNTO 0); 
             Y_C : IN std_logic_vector(7 DOWNTO 0);  
             EQ : OUT std_logic;
             MAX : OUT std_logic
     );

end component;

component UNIDAD_CONTROL

PORT( 
      CLR,CLK,S_UC,GO,EQ_UC,MAX_UC  : in std_logic;
      LDRABS, LDRO, LDRX, LDRY   : out std_logic;
      SEL_M1,SEL_M2 : out std_logic_vector (1 downto 0)
      );

end component;


signal X_LCM, X_GCD, Y_LCM, Y_GCD, X_MUX, Y_MUX : std_logic_vector(7 downto 0);
signal AR0,BR0,RX,RY : std_logic_vector(7 downto 0);
signal SEL_MUX : std_logic_vector(1 downto 0);
signal LDR0,SR0,LDRX0,LDRY0,LDO,FMAX,FEQ : std_logic;

begin

MUX_X0 : MUX_X port map (A => AF, X_2 => X_GCD, X_3 => X_LCM, SEL => SEL_MUX,
                         X => X_MUX ); 

MUX_Y0 : MUX_Y port map (B => BF, Y_2 => Y_GCD, Y_3 => Y_LCM, SEL => SEL_MUX,
                         Y=> Y_MUX);
                         
REG_ABSELECT0 : REG_ABSELECT port map ( A_R => AF, B_R => BF, S_R => SEL0, 
                A_RO => AR0 ,B_RO => BR0 , S_RO => SR0, REG_ABSELECTLD => LDR0,
                CLR => CLR0 ,CLK => CLK0);
                
REGX0 : REG_X port map (IN_RX => X_MUX, OUT_RX => RX, XLD => LDRX0, CLR => CLR0 ,CLK => CLK0);

REGY0 : REG_Y port map (IN_RY => Y_MUX, OUT_RY => RY, YLD => LDRY0, CLR => CLR0 ,CLK => CLK0);

REGO0 : REG_OUT port map (X_OUT => RX, OUT_G => R, OUTLD => LDO, CLR => CLR0 ,CLK => CLK0);

SX : SUMADOR_X port map  (X_P => RX, A_P => AR0, XO_P => X_LCM);
    
SY : SUMADOR_Y port map  (Y_P => RY, B_P => BR0, YO_P => Y_LCM);

RSX : RESTADOR_X port map (Y_M => RY, X_M => RX, XO_M => X_GCD);

RSY : RESTADOR_Y port map (Y_M => RY, X_M => RX, YO_M => Y_GCD);

COMP : COMPARADOR port map (X_C => RX, Y_C => RY, EQ => FEQ, MAX => FMAX);

UC : UNIDAD_CONTROL port map (CLR => CLR0 ,CLK => CLK0, S_UC => SR0, GO => GO0,
                              EQ_UC => FEQ, MAX_UC => FMAX,
                              LDRABS => LDR0 , LDRO => LDO , LDRX => LDRX0 , LDRY=> LDRY0,
                              SEL_M1 => SEL_MUX,SEL_M2 => SEL_MUX);
         PRUEBA <= X_MUX;
end Behavioral;


