library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_GATE is
    Port ( A : in STD_LOGIC;
           Y : out STD_LOGIC);
end NOT_GATE;

architecture Behavioral of NOT_GATE is
begin
    Y <= not A;
end Behavioral;
