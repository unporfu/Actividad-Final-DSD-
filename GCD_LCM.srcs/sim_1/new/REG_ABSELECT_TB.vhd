library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_ABSELECT_TB is
end REG_ABSELECT_TB;

architecture Behavioral of REG_ABSELECT_TB is

component REG_ABSELECT

port(
    A_R   : in std_logic_vector(7 downto 0);
    B_R   : in std_logic_vector(7 downto 0);
    A_RO  : out std_logic_vector(7 downto 0);
    B_RO  : out std_logic_vector(7 downto 0);
    REG_ABSELECTLD,CLR,CLK   : in std_logic
    );
 end component; 
 
  
  signal A_R_S,B_R_S,A_RO_S,B_RO_S :  std_logic_vector(7 downto 0);
  signal REG_ABSELECTLD_S,CLR_S,CLK_S : std_logic;
  
   constant CLOCK_PERIOD: time := 10ns;
      signal STOP_CLOCK : boolean;
      

begin
UUT : REG_ABSELECT port map (A_R => A_R_S, B_R => B_R_S,  A_RO=> A_RO_S,
                             B_RO=> B_RO_S, REG_ABSELECTLD => REG_ABSELECTLD_S,
                             CLR => CLR_S, CLK => CLK_S);
    probe : process 
    
    begin
    A_R_S <= "00111000";
    B_R_S <= "00111110";
    CLR_S <= '0';
    REG_ABSELECTLD_S <= '0';
    wait for 20ns;
    A_R_S <= "00111000";
    B_R_S <= "11111110";
    CLR_S <= '0';
    REG_ABSELECTLD_S <= '1';
    wait for 20ns;
    A_R_S <= "00111000";
    B_R_S <= "11110110";
    REG_ABSELECTLD_S <= '0';
    wait for 20ns;
    REG_ABSELECTLD_S <= '0';
    A_R_S <= "00111011";
    B_R_S <= "11111111";
    REG_ABSELECTLD_S <= '1';
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
