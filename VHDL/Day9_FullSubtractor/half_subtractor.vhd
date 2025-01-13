library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor is
    port (
        A, B : in std_logic;
        DIFF, BORROW : out std_logic
    );
end half_subtractor;

architecture dataflow of half_subtractor is
begin
    DIFF <= A xor B;
    BORROW <= (not A) and B;
end architecture dataflow;
