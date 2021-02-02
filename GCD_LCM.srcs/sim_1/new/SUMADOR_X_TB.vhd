library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SUMADOR_X_TB is

end SUMADOR_X_TB;

architecture Behavioral of SUMADOR_X_TB is

component SUMADOR_X 
PORT( 
             X_P  : IN std_logic_vector(7 DOWNTO 0); 
             A_P  : IN std_logic_vector(7 DOWNTO 0);  
             XO_P : OUT std_logic_vector(7 DOWNTO 0));

end component;
             
             signal X_P_S,A_P_S,XO_P_S : std_logic_vector(7 DOWNTO 0); 
begin
             UUT : SUMADOR_X port map (X_P => X_P_S, A_P => A_P_S, XO_P => XO_P_S);

                                       
    probe : process 
    
    begin
    A_P_S <= "00000000";
    X_P_S <= "01010101";
    wait for 10ns;
    A_P_S <= "00000111";
    X_P_S <= "01010101";
    wait;
    
    end process;
    
end Behavioral;
