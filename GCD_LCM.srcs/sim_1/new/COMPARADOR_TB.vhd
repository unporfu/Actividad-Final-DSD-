library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARADOR_TB is

end COMPARADOR_TB;

architecture Behavioral of COMPARADOR_TB is

component COMPARADOR 
PORT( 
             X_C : IN std_logic_vector(7 DOWNTO 0); 
             Y_C : IN std_logic_vector(7 DOWNTO 0);  
             EQ : OUT std_logic;
             MAX : OUT std_logic
     );
end component;
signal X_C_S,Y_C_S : std_logic_vector(7 DOWNTO 0); 
signal EQ_S, MAX_S :  std_logic;

begin

UUT: COMPARADOR port map (X_C => X_C_S, Y_C => Y_C_S,EQ => EQ_S, MAX => MAX_S);

probe : process
 
 begin 
  Y_C_S <= "11111111";
  X_C_S <= "00000000";
  wait for 10ns;
  Y_C_S <= "00000000";
  X_C_S <= "11111111";
  wait for 10ns;
  Y_C_S <= "00000000";
  X_C_S <= "00000000";
  wait;

 end process;
 
 end Behavioral;
