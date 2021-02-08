library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_ABSELECT is 

port(
    A_R   : in std_logic_vector(15 downto 0);
    B_R   : in std_logic_vector(15 downto 0);
    A_RO  : out std_logic_vector(15 downto 0);
    B_RO  : out std_logic_vector(15 downto 0);
    REG_ABSELECTLD,CLR,CLK   : in std_logic
    );
    
end REG_ABSELECT;

architecture Behavioral of REG_ABSELECT is

begin

REGISTRO : process (CLK,CLR)
 
     begin
     
        IF (CLR='1') THEN
        A_RO <= "0000000000000000";
        B_RO <= "0000000000000000";
        ELSIF (rising_edge(CLK)) THEN
        IF (REG_ABSELECTLD = '1') THEN 
        A_RO <= A_R;
        B_RO <= B_R;
    end if;
    end if;
    end process; 
    


end Behavioral;
 
