library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_OUT is 

port(
    X_OUT           : in std_logic_vector(15 downto 0);
    OUT_G           : out std_logic_vector(15 downto 0);
    OUTLD,CLR,CLK   : in std_logic
    );
    
end REG_OUT;

architecture Behavioral of REG_OUT is

begin

REGISTRO : process (CLK,CLR)
 
     begin
     
        IF (CLR='1') THEN
        OUT_G <= "0000000000000000";
        ELSIF (rising_edge(CLK)) THEN
        IF (OUTLD = '1') THEN 
        OUT_G <= X_OUT;
    end if;
    end if;
    end process; 
    


end Behavioral;
 