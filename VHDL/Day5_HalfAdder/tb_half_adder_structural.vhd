library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_half_adder_structural is
end tb_half_adder_structural;

architecture Behavioral of tb_half_adder_structural is

    component half_adder_structural
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Sum : out STD_LOGIC;
            Carry : out STD_LOGIC
        );
    end component;

    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Sum : STD_LOGIC;
    signal Carry : STD_LOGIC;

begin

    uut: half_adder_structural
        Port map (
            A => A,
            B => B,
            Sum => Sum,
            Carry => Carry
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
