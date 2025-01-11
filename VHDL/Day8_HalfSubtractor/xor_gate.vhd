library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port (
        X, Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end xor_gate;

architecture Behavioral of xor_gate is
begin
    Z <= X xor Y;
end Behavioral;
