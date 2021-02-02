library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RESTADOR_X_TB is

end RESTADOR_X_TB;

architecture Behavioral of RESTADOR_X_TB is

component RESTADOR_X
PORT( 
             X_M  : IN std_logic_vector(7 DOWNTO 0); 
             Y_M  : IN std_logic_vector(7 DOWNTO 0);  
             XO_M : OUT std_logic_vector(7 DOWNTO 0));

end component;
             
             signal Y_M_S,X_M_S,XO_M_S : std_logic_vector(7 DOWNTO 0); 
begin
             UUT : RESTADOR_X port map (Y_M => Y_M_S, X_M => X_M_S, XO_M => XO_M_S);

                                       
    probe : process 
    
    begin
    Y_M_S <= "00000000";
    X_M_S <= "01010101";
    wait for 10ns;
    Y_M_S <= "00000111";
    X_M_S <= "01010101";
    wait;
    
    end process;
    
end Behavioral;

