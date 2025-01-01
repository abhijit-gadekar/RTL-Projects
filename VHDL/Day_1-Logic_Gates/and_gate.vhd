-----------------Behavioral Modeling--------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
 port ( a,b: in std_logic;
        and_out: out std_logic 
       );
end and_gate;

architecture Behavioral of and_gate is
begin
process (a,b)
    begin
        if (a = '1'  and b = '1') then
            and_out <= '1';
        else
            and_out <= '0';
        end if;
end process;
end Behavioral;


------------------DataFlow Modeling---------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity and_gate is
    --Port ( a,b: in std_logic;
           --and_out: out std_logic 
         --);
--end and_gate;

--architecture dataflow of and_gate is
--begin
    --and_out <= a and b;
--end Dataflow;
