------------------Behavioral Modeling--------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity universal_nor_gate is
    Port (
        a, b : in std_logic;
        nor_out : out std_logic
    );
end universal_nor_gate;

architecture Behavioral of universal_nor_gate is
begin
    process(a, b)
    begin
        if (a = '0' and b = '0') then
            nor_out <= '1';  
        else
            nor_out <= '0';  
        end if;
    end process;
end Behavioral;

------------------Dataflow Modeling--------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity universal_nor_gate is
--    Port (
--        a, b : in std_logic;
--        nor_out : out std_logic
--    );
--end universal_nor_gate;

--architecture dataflow of universal_nor_gate is
--begin
--    nor_out <= not (a or b);
--end dataflow;