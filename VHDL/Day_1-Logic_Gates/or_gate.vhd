-----------------Behavioral Modeling--------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
 port ( a,b: in std_logic;
        or_out: out std_logic 
       );
end or_gate;

architecture Behavioral of or_gate is
begin
process (a,b)
    begin
        if (a = '1'  or b = '1') then
            or_out <= '1';
        else
            or_out <= '0';
        end if;
end process;
end Behavioral;


------------------DataFlow Modeling---------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity or_gate is
    --Port ( a,b: in std_logic;
           --or_out: out std_logic 
         --);
--end or_gate;

--architecture dataflow of or_gate is
--begin
    --or_out <= a or b;
--end dataflow;
