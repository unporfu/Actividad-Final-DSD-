library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_X_TB is
end REG_X_TB;

architecture Behavioral of REG_X_TB is

component REG_X

      port(
           IN_RX         : in std_logic_vector(7 downto 0);
           OUT_RX        : out std_logic_vector(7 downto 0);
           XLD,CLR,CLK   : in std_logic
          );
          
end component;

      signal IN_RX_S, OUT_RX_S : std_logic_vector(7 downto 0);
      signal XLD_S,CLR_S,CLK_S : std_logic;
      
      constant CLOCK_PERIOD: time := 10ns;
      signal STOP_CLOCK : boolean;
 
begin

      UUT : REG_X port map (IN_RX => IN_RX_S,OUT_RX => OUT_RX_S, XLD => XLD_S , 
                            CLR => CLR_S, CLK => CLK_S);
                            
    probe : process 
    
    begin
    IN_RX_S <= "00111000";
    CLR_S <= '0';
    XLD_S <= '0';
    wait for 20ns;
    IN_RX_S <= "00111000";
    CLR_S <= '0';
    XLD_S <= '1';
    wait for 20ns;
    IN_RX_S <= "11111111";
    XLD_S <= '0';
    wait for 20ns;
    XLD_S <= '0';
    IN_RX_S <= "11111000";
    XLD_S <= '1';
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
