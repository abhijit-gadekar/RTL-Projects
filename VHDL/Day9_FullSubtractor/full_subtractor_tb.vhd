library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_subtractor_tb is
end full_subtractor_tb;

architecture tb of full_subtractor_tb is
    component full_subtractor
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               C : in STD_LOGIC;
               DIFF : out STD_LOGIC;
               Borrow : out STD_LOGIC);
    end component;

    signal A, B, C : STD_LOGIC;
    signal DIFF, Borrow : STD_LOGIC;

begin
    uut: full_subtractor port map (
        A => A,
        B => B,
        C => C,
        DIFF => DIFF,
        Borrow => Borrow
    );

    stim_proc: process
    begin
        A <= '0'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1'; wait for 10 ns;
        wait;
    end process;
end tb;
