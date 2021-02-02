library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UNIDAD_CONTROL_TB is

end UNIDAD_CONTROL_TB;

architecture Behavioral of UNIDAD_CONTROL_TB is

component UNIDAD_CONTROL
PORT( 
      CLR,CLK,S_UC,GO,EQ_UC,MAX_UC  : in std_logic;
      LDRABS, LDRO, LDRX, LDRY   : out std_logic;
      SEL_M1,SEL_M2 : out std_logic_vector (1 downto 0)
      );
end component;
  
  signal CLR_S,CLK_S,S_UC_S,GO_S,EQ_UC_S,MAX_UC_S  : std_logic;
  signal LDRABS_S, LDRO_S, LDRX_S, LDRY_S          : std_logic;
  signal SEL_M1_S,SEL_M2_S                             : std_logic_vector (1 downto 0);
  
      constant CLOCK_PERIOD: time := 10ns;
      signal STOP_CLOCK : boolean;
      
begin

   UUT: UNIDAD_CONTROL port map (CLR => CLR_S,CLK => CLK_S,S_UC => S_UC_S,
                                 GO => GO_S,EQ_UC => EQ_UC_S,
                                 MAX_UC => MAX_UC_S ,LDRABS => LDRABS_S, 
                                 LDRO => LDRO_S, LDRX => LDRX_S, 
                                 LDRY => LDRY_S, SEL_M1=> SEL_M1_S,SEL_M2 => SEL_M2_S);


  probe : process
  
  begin 
  CLR_S <= '0';
  GO_S <= '1'; 
  S_UC_S <= '0';
  EQ_UC_S <= '0';
  MAX_UC_S <='1';
  wait for 50ns;
  EQ_UC_S <= '1';
  MAX_UC_S <='0';
  wait for 50ns;
  end process;
  
  clock : process
   
   begin
   while not STOP_CLOCK loop
   CLK_S <= '0','1' after CLOCK_PERIOD /2;
   wait for CLOCK_PERIOD;
   end loop;
   wait;
   
   end process;
   
end Behavioral;
