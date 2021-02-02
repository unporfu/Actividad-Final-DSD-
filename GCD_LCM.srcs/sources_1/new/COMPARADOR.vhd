library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity COMPARADOR is

PORT( 
             X_C : IN std_logic_vector(7 DOWNTO 0); 
             Y_C : IN std_logic_vector(7 DOWNTO 0);  
             EQ : OUT std_logic;
             MAX : OUT std_logic
     );

end COMPARADOR;
            
architecture Behavioral of COMPARADOR is

begin

process (X_C,Y_C)
  
  begin 
  
     IF Y_C = X_C THEN EQ <= '1'; MAX <= '0'; END IF;
     IF Y_C > X_C THEN EQ <= '0'; MAX <= '0'; END IF;
     IF Y_C < X_C THEN EQ <= '0'; MAX <= '1'; END IF;
end process; 

end Behavioral;
