library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    Port (
        a : in STD_LOGIC;      
        b : in STD_LOGIC;         
        sel : in STD_LOGIC;       
        y : out STD_LOGIC         
    );
end mux2to1;

architecture Behavioral of mux2to1 is
begin
    process(a, b, sel)
    begin
        if sel = '0' then
            y <= a;              
        else
            y <= b;             
        end if;
    end process;
end Behavioral;
