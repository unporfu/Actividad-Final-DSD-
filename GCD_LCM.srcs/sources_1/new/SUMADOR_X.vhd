library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SUMADOR_X is

PORT( 
             X_P : IN std_logic_vector(15 DOWNTO 0); 
             A_P : IN std_logic_vector(15 DOWNTO 0);  
             XO_P : OUT std_logic_vector(15 DOWNTO 0));

end SUMADOR_X;

architecture Behavioral of SUMADOR_X is
   
begin
        XO_P <= (A_P + X_P);

end Behavioral;
