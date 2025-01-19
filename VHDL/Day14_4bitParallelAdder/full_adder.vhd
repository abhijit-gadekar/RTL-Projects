library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port(
        X, Y, Cin : in std_logic;
        Sum, Cout : out std_logic
    );
end full_adder;

architecture behavior of full_adder is
begin
    Sum <= (X xor Y) xor Cin;
    Cout <= (X and Y) or (Cin and (X xor Y));
end behavior;
