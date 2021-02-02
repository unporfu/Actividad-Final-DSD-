library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SUMADOR_Y_TB is

end SUMADOR_Y_TB;

architecture Behavioral of SUMADOR_Y_TB is

component SUMADOR_Y 
PORT( 
             Y_P  : IN std_logic_vector(7 DOWNTO 0); 
             B_P  : IN std_logic_vector(7 DOWNTO 0);  
             YO_P : OUT std_logic_vector(7 DOWNTO 0));

end component;
             
             signal Y_P_S,B_P_S,YO_P_S : std_logic_vector(7 DOWNTO 0); 
begin
             UUT : SUMADOR_Y port map (Y_P => Y_P_S, B_P => B_P_S, YO_P => YO_P_S);

                                       
    probe : process 
    
    begin
    B_P_S <= "00000000";
    Y_P_S <= "01010101";
    wait for 10ns;
    B_P_S <= "00000111";
    Y_P_S <= "01010101";
    wait;
    
    end process;
    
end Behavioral;

