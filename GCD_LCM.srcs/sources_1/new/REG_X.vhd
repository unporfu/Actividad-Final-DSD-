library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_X is 

port(
    IN_RX   : in std_logic_vector(15 downto 0);
    OUT_RX  : out std_logic_vector(15 downto 0);
    XLD,CLR,CLK   : in std_logic
    );
    
end REG_X;

architecture Behavioral of REG_X is

begin

REGISTRO : process (CLK,CLR)
 
     begin
     
        IF (CLR='1') THEN
        OUT_RX <= "0000000000000000";
        ELSIF (rising_edge(CLK)) THEN
        IF (XLD = '1') THEN 
        OUT_RX <= IN_RX;
    end if;
    end if;
    end process; 
    


end Behavioral;
 