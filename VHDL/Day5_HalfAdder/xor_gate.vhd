library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC);
end xor_gate;

architecture Behavioral of xor_gate is
begin
    C <= A XOR B;
end Behavioral;
