library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_Y_TB is
end MUX_Y_TB;

architecture Behavioral of MUX_Y_TB is

component MUX_Y
    port(

    B     : in std_logic_vector(7 downto 0);
    Y_2   : in std_logic_vector(7 downto 0);
    Y_3   : in std_logic_vector(7 downto 0);
    SEL   : in std_logic_vector (1 downto 0); 
    Y : out std_logic_vector(7 downto 0)
    
    );
end component;

    signal B_S     : std_logic_vector(7 downto 0);
    signal Y_2_S   : std_logic_vector(7 downto 0);
    signal Y_3_S   : std_logic_vector(7 downto 0);
    signal Y_S     : std_logic_vector(7 downto 0);
    signal SEL_S   : std_logic_vector (1 downto 0); 
 
begin
   
   UUT: MUX_Y port map (B => B_S, Y => Y_S, Y_2 => Y_2_S,
                        Y_3 => Y_3_S, SEL => SEL_S );

probe : process

begin
     B_S   <= "00000111";
     Y_2_S <= "11111111";
     Y_3_S <= "01010101";
     SEL_S <= "00";
     wait for 50ns;
     SEL_S <= "01";
     wait for 50ns;
     SEL_S <= "10";
     wait for 50ns;
     SEL_S <= "11";
     wait;
     
end process;
end Behavioral;
