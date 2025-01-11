library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port (
        X, Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end and_gate;

architecture Behavioral of and_gate is
begin
    Z <= X and Y;
end Behavioral;
