library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates_tb is
end logic_gates_tb;

architecture Behavioral of logic_gates_tb is
    signal A, B : STD_LOGIC := '0';
    signal AND_OUT, OR_OUT, NAND_OUT, NOR_OUT, XOR_OUT, XNOR_OUT, NOT_A : STD_LOGIC;
begin
    UUT: entity work.logic_gates_tb
        port map (
            A => A,
            B => B,
            AND_OUT => AND_OUT,
            OR_OUT => OR_OUT,
            NAND_OUT => NAND_OUT,
            NOR_OUT => NOR_OUT,
            XOR_OUT => XOR_OUT,
            XNOR_OUT => XNOR_OUT,
            NOT_A => NOT_A,
        );
      
    process
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
