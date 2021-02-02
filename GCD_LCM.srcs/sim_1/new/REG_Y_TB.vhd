library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_Y_TB is
end REG_Y_TB;

architecture Behavioral of REG_Y_TB is

component REG_Y

      port(
           IN_RY         : in std_logic_vector(7 downto 0);
           OUT_RY        : out std_logic_vector(7 downto 0);
           YLD,CLR,CLK   : in std_logic
          );
          
end component;

      signal IN_RY_S, OUT_RY_S : std_logic_vector(7 downto 0);
      signal YLD_S,CLR_S,CLK_S : std_logic;
      
      constant CLOCK_PERIOD: time := 10ns;
      signal STOP_CLOCK : boolean;
 
begin

      UUT : REG_Y port map (IN_RY => IN_RY_S,OUT_RY => OUT_RY_S, YLD => YLD_S , 
                            CLR => CLR_S, CLK => CLK_S);
                            
    probe : process 
    
    begin
    IN_RY_S <= "00111000";
    CLR_S <= '0';
    YLD_S <= '0';
    wait for 20ns;
    IN_RY_S <= "00111000";
    CLR_S <= '0';
    YLD_S <= '1';
    wait for 20ns;
    IN_RY_S <= "11111111";
    YLD_S <= '0';
    wait for 20ns;
    YLD_S <= '0';
    IN_RY_S <= "11111000";
    YLD_S <= '1';
    wait for 20ns;
    CLR_S <= '0';
    wait for 20ns;
    wait;
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
