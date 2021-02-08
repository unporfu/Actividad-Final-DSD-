library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RESTADOR_Y is

PORT( 
             Y_M : IN std_logic_vector(15 DOWNTO 0);
             X_M : IN std_logic_vector(15 DOWNTO 0);  
             YO_M : OUT std_logic_vector(15 DOWNTO 0));

end RESTADOR_Y;

architecture Behavioral of RESTADOR_Y is
   
begin
        YO_M <= (Y_M - X_M);

end Behavioral;
