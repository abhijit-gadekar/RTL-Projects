-----------------Behavioral Modeling--------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
 port ( a: in std_logic;
        not_out: out std_logic 
       );
end not_gate;

architecture Behavioral of not_gate is
begin
process (a)
    begin
        if (a = '1') then
            not_out <= '0';
        elsif (a = '0') then
            not_out <= '1';
        else
            not_out <= 'X';
        end if;
end process;
end Behavioral;


------------------DataFlow Modeling---------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity not_gate is
--  Port ( a: in std_logic;
--         not_out: out std_logic 
--         );
--end not_gate;

--architecture dataflow of not_gate is
--begin
--    not_out <= not a;
--end dataflow;