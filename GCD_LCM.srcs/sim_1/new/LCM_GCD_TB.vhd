library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCM_GCD_TB is

end LCM_GCD_TB;

architecture Behavioral of LCM_GCD_TB is

component LCM_GCD
  
   port(

    AF,BF     : in std_logic_vector(15 downto 0);
    R         : out std_logic_vector(15 downto 0);
    SEL0,CLR0,GO0,CLK0   : in std_logic
        );
        
end component;

    signal AF_S,BF_S    : std_logic_vector(15 downto 0);
    signal R_S         : std_logic_vector(15 downto 0);
    signal SEL0_S,CLR0_S,GO0_S,CLK0_S   : std_logic;
    constant CLOCK_PERIOD: time := 10ns;
    signal STOP_CLOCK : boolean;
    
begin
 
 UUT: LCM_GCD port map (AF => AF_S,BF => BF_S,R => R_S,
 SEL0 => SEL0_S,CLR0 => CLR0_S,GO0 => GO0_S, CLK0 => CLK0_S);  
 
 probe : process 
 
 begin
 AF_S <= "0000000001010111";
 BF_S <= "0000000000111110";
 SEL0_S <= '1';
 CLR0_S <= '0';
 GO0_S  <= '1';
 wait for 200ns;

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
