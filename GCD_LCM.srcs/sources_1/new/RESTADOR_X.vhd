library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RESTADOR_X is

PORT( 
             Y_M : IN std_logic_vector(7 DOWNTO 0);
             X_M : IN std_logic_vector(7 DOWNTO 0);  
             XO_M : OUT std_logic_vector(7 DOWNTO 0));

end RESTADOR_X;

architecture Behavioral of RESTADOR_X is
   
begin
        XO_M <= (X_M - Y_M);

end Behavioral;
