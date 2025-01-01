------------------Behavioral Modeling--------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity universal_nand_gate is
    Port (
        a, b : in std_logic;
        nand_out : out std_logic
    );
end universal_nand_gate;

architecture Behavioral of universal_nand_gate is
begin
    process(a, b)
    begin
        if (a = '1' and b = '1') then
            nand_out <= '0';  
        else
            nand_out <= '1';  
        end if;
    end process;
end Behavioral;

------------------Dataflow Modeling--------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity universal_nand_gate is
--    Port (
--        a, b : in std_logic;
--        nand_out : out std_logic
--    );
--end universal_nand_gate;

--architecture dataflow of universal_nand_gate is
--begin
--    nand_out <= not (a and b);
--end dataflow;