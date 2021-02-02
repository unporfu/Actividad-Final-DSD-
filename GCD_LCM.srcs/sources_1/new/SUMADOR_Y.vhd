library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SUMADOR_Y is

PORT( 
             Y_P : IN std_logic_vector(7 DOWNTO 0); 
             B_P : IN std_logic_vector(7 DOWNTO 0);  
             YO_P : OUT std_logic_vector(7 DOWNTO 0));

end SUMADOR_Y;

architecture Behavioral of SUMADOR_Y is
   
begin
        YO_P <= (B_P + Y_P);

end Behavioral;
