library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Cin : in  STD_LOGIC;
        Sum : out STD_LOGIC;
        Carry : out STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is
begin
    Sum <= A xor B xor Cin;
    Carry <= (A and B) or (B and Cin) or (Cin and A);
end Behavioral;
