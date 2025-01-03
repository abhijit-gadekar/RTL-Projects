library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_GATE is
    Port ( A, B : in STD_LOGIC;
           Y : out STD_LOGIC);
end XOR_GATE;

architecture Behavioral of XOR_GATE is
begin
    Y <= A xor B;
end Behavioral;
