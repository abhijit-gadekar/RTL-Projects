-----------------Behavioral Modeling--------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xnor_gate is
 port ( a,b: in std_logic;
        xnor_out: out std_logic 
       );
end xnor_gate;

architecture Behavioral of xnor_gate is
begin
process (a,b)
    begin
        if (a = b) then
            xnor_out <= '1';
        else
            xnor_out <= '0'; 
        end if;
end process;
end Behavioral;


------------------DataFlow Modeling---------------------------

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity xnor_gate is
    --Port ( a,b: in std_logic;
           --xnor_out: out std_logic 
         --);
--end xnor_gate;

--architecture dataflow of xnor_gate is
--begin
    --xnor_out <= a xnor b;
--end dataflow;