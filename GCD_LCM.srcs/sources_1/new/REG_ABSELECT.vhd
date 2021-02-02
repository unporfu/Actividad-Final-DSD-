library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_ABSELECT is 

port(
    A_R   : in std_logic_vector(7 downto 0);
    B_R   : in std_logic_vector(7 downto 0);
    S_R   : in std_logic;
    A_RO  : out std_logic_vector(7 downto 0);
    B_RO  : out std_logic_vector(7 downto 0);
    S_RO  : out std_logic;
    REG_ABSELECTLD,CLR,CLK   : in std_logic
    );
    
end REG_ABSELECT;

architecture Behavioral of REG_ABSELECT is

begin

REGISTRO : process (CLK,CLR)
 
     begin
     
        IF (CLR='1') THEN
        A_RO <= "00000000";
        B_RO <= "00000000";
        S_RO <= '0';
        ELSIF (rising_edge(CLK)) THEN
        IF (REG_ABSELECTLD = '1') THEN 
        A_RO <= A_R;
        B_RO <= B_R;
        S_RO <= S_R;
    end if;
    end if;
    end process; 
    


end Behavioral;
 
