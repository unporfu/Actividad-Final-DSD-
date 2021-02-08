library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_X is

port(

    A     : in std_logic_vector(15 downto 0);
    X_2   : in std_logic_vector(15 downto 0);
    X_3   : in std_logic_vector(15 downto 0);
    SEL   : in std_logic_vector (1 downto 0); 
    X : out std_logic_vector(15 downto 0)
    
    );
    
end MUX_X;

architecture Behavioral of MUX_X is

begin

       PROCESS (A,X_2,X_3,SEL) IS
       BEGIN
         CASE SEL IS
           WHEN "00" => X <= (others => '0');
           WHEN "01" => X <=  A;
           WHEN "10" => X <=  X_2;
           WHEN "11" => X <= X_3;
           WHEN OTHERS => X <= (others => '0');
         END CASE;
       END PROCESS;

end Behavioral;


