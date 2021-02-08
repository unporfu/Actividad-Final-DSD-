library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_Y is

port(

    B     : in std_logic_vector(15 downto 0);
    Y_2   : in std_logic_vector(15 downto 0);
    Y_3   : in std_logic_vector(15 downto 0);
    SEL   : in std_logic_vector (1 downto 0); 
    Y : out std_logic_vector(15 downto 0)
    
    );
    
end MUX_Y;

architecture Behavioral of MUX_Y is

begin

       PROCESS (B,Y_2,Y_3,SEL) IS
       BEGIN
         CASE SEL IS
           WHEN "00" => Y <= (others => '0');
           WHEN "01" => Y <=  B;
           WHEN "10" => Y <= Y_2;
           WHEN "11" => Y <= Y_3;
           WHEN OTHERS => Y <= (others => '0');
         END CASE;
       END PROCESS;

end Behavioral;

