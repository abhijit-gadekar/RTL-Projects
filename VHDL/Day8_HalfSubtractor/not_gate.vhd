library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    Port (
        X : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end not_gate;

architecture Behavioral of not_gate is
begin
    Z <= not X;
end Behavioral;
