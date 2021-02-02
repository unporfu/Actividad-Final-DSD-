library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCM_GCD_TB is

end LCM_GCD_TB;

architecture Behavioral of LCM_GCD_TB is

component LCM_GCD
  
   port(

    AF,BF     : in std_logic_vector(7 downto 0);
    R         : out std_logic_vector(7 downto 0);
    PRUEBA    : out std_logic_vector(7 downto 0);
    SEL0,CLR0,GO0,CLK0   : in std_logic
        );
        
end component;

    signal AF_S,BF_S,PRUEBA_S    : std_logic_vector(7 downto 0);
    signal R_S         : std_logic_vector(7 downto 0);
    signal SEL0_S,CLR0_S,GO0_S,CLK0_S   : std_logic;
    constant CLOCK_PERIOD: time := 10ns;
    signal STOP_CLOCK : boolean;
    
begin
 
 UUT: LCM_GCD port map (AF => AF_S,BF => BF_S,R => R_S,
 SEL0 => SEL0_S,CLR0 => CLR0_S,GO0 => GO0_S, CLK0 => CLK0_S, PRUEBA=> PRUEBA_S);  
 
 probe : process 
 
 begin
 AF_S <= "00000100";
 BF_S <= "00000110";
 SEL0_S <= '0';
 CLR0_S <= '0';
 GO0_S  <= '1';
 wait;

end process;

  clock : process
   
   begin
   while not STOP_CLOCK loop
   CLK0_S <= '0','1' after CLOCK_PERIOD /2;
   wait for CLOCK_PERIOD;
   end loop;
   wait;
   
end process;

end Behavioral;
