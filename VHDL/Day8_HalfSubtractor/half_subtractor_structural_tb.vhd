library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor_structural_tb is
end half_subtractor_structural_tb;

architecture Behavioral of half_subtractor_structural_tb is
    component half_subtractor_structural
        Port (
            A, B : in STD_LOGIC;
            DIFF, BORROW : out STD_LOGIC
        );
    end component;

    signal A, B : STD_LOGIC := '0';

    signal DIFF, BORROW : STD_LOGIC;

begin
    uut: half_subtractor_structural port map (
        A => A,
        B => B,
        DIFF => DIFF,
        BORROW => BORROW
    );

    stim_proc: process
    begin
        A <= '0'; B <= '0';
        wait for 10 ns;

        A <= '0'; B <= '1';
        wait for 10 ns;

        A <= '1'; B <= '0';
        wait for 10 ns;

        A <= '1'; B <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
