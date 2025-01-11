library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor_tb is
end half_subtractor_tb;

architecture Behavioral of half_subtractor_tb is
    component half_subtractor
        port (
            A, B : in std_logic;
            DIFF, BORROW : out std_logic
        );
    end component;

    signal A, B : std_logic := '0';
    signal DIFF, BORROW : std_logic;

begin
    uut: half_subtractor port map (
        A => A,
        B => B,
        DIFF => DIFF,
        BORROW => BORROW
    );

    stim_proc: process
    begin
        A <= '0'; B <= '0';
        wait for 10 ns;
        assert (DIFF = '0' and BORROW = '0') 

        A <= '0'; B <= '1';
        wait for 10 ns;
        assert (DIFF = '1' and BORROW = '1') 
        A <= '1'; B <= '0';
        wait for 10 ns;
        assert (DIFF = '1' and BORROW = '0') 

        A <= '1'; B <= '1';
        wait for 10 ns;
        assert (DIFF = '0' and BORROW = '0') 
        wait;
    end process;

end Behavioral;
