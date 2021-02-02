library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_X_TB is
end MUX_X_TB;

architecture Behavioral of MUX_X_TB is

component MUX_X
    port(

    A     : in std_logic_vector(7 downto 0);
    X_2   : in std_logic_vector(7 downto 0);
    X_3   : in std_logic_vector(7 downto 0);
    SEL   : in std_logic_vector (1 downto 0); 
    X : out std_logic_vector(7 downto 0)
    
    );
end component;

    signal A_S     : std_logic_vector(7 downto 0);
    signal X_2_S   : std_logic_vector(7 downto 0);
    signal X_3_S   : std_logic_vector(7 downto 0);
    signal X_S     : std_logic_vector(7 downto 0);
    signal SEL_S   : std_logic_vector (1 downto 0); 
 
begin
   
   UUT: MUX_X port map (A => A_S, X => X_S, X_2 => X_2_S,
                        X_3 => X_3_S, SEL => SEL_S );

probe : process

begin
     A_S   <= "00000111";
     X_2_S <= "11111111";
     X_3_S <= "01010101";
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
