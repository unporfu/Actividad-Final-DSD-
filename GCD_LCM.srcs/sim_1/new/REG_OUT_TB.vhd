library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_OUT_TB is
end REG_OUT_TB;

architecture Behavioral of REG_OUT_TB is

component REG_OUT


port(
    X_OUT           : in std_logic_vector(7 downto 0);
    OUT_G           : out std_logic_vector(7 downto 0);
    OUTLD,CLR,CLK   : in std_logic
    );
    
    
end component;

      signal X_OUT_S, OUT_G_S : std_logic_vector(7 downto 0);
      signal OUTLD_S,CLR_S,CLK_S : std_logic;
      
      constant CLOCK_PERIOD: time := 10ns;
      signal STOP_CLOCK : boolean;
 
begin

      UUT : REG_OUT port map (X_OUT => X_OUT_S,OUT_G => OUT_G_S, OUTLD => OUTLD_S , 
                            CLR => CLR_S, CLK => CLK_S);
                            
    probe : process 
    
    begin
    X_OUT_S <= "00111000";
    CLR_S <= '0';
    OUTLD_S <= '0';
    wait for 20ns;
    X_OUT_S <= "00111000";
    CLR_S <= '0';
    OUTLD_S <= '1';
    wait for 20ns;
    X_OUT_S <= "11111111";
    OUTLD_S <= '0';
    wait for 20ns;
    OUTLD_S <= '0';
    X_OUT_S <= "11111000";
    OUTLD_S <= '1';
    wait for 20ns;
    CLR_S <= '1';
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
