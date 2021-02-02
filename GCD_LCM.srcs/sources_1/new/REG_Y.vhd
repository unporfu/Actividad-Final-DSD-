library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_Y is 

port(
    IN_RY   : in std_logic_vector(7 downto 0);
    OUT_RY  : out std_logic_vector(7 downto 0);
    YLD,CLR,CLK   : in std_logic
    );
    
end REG_Y;

architecture Behavioral of REG_Y is

begin

REGISTRO : process (CLK,CLR)
 
     begin
     
        IF (CLR='1') THEN
        OUT_RY <= "00000000";
        ELSIF (rising_edge(CLK)) THEN
        IF (YLD = '1') THEN 
        OUT_RY <= IN_RY;
    end if;
    end if;
    end process; 
    


end Behavioral;
 
