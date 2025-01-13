library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_subtractor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           DIFF : out STD_LOGIC;
           Borrow : out STD_LOGIC);
end full_subtractor;

architecture dataflow of full_subtractor is
begin
    DIFF <= A xor B xor C;
    Borrow <= ((not A) and (B or C)) or (B and C);
end dataflow;
