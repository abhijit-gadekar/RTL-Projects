library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_subtractor_structural is
    port (
        A, B, C : in std_logic;
        DIFF, BORROW : out std_logic
    );
end full_subtractor_structural;

architecture structural of full_subtractor_structural is
    component half_subtractor is
        port (
            A, B : in std_logic;
            DIFF, BORROW : out std_logic
        );
    end component;
    signal diff1, borrow1, borrow2 : std_logic;
begin
    HS1: half_subtractor port map (A => A, B => B, DIFF => diff1, BORROW => borrow1);
    HS2: half_subtractor port map (A => diff1, B => C, DIFF => DIFF, BORROW => borrow2);
    BORROW <= borrow1 or borrow2;
end architecture structural;
