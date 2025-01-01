-----------------Behavioral Modeling--------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
 port ( a,b: in std_logic;
        xor_out: out std_logic 
       );
end xor_gate;

architecture Behavioral of xor_gate is
begin
process (a,b)
    begin
        if (a = '1' and b = '0') or (a = '0' and b = '1') then
            xor_out <= '1';
        else
            xor_out <= '0'; 
        end if;
end process;
end Behavioral;


------------------DataFlow Modeling---------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity xor_gate is
    --Port ( a,b: in std_logic;
           --xor_out: out std_logic 
         --);
--end xor_gate;

--architecture dataflow of xor_gate is
--begin
    --xor_out <= a xor b;
--end dataflow;

