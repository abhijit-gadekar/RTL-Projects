library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates_tb is
end logic_gates_tb;

architecture Behavioral of logic_gates_tb is
    component logic_gates
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               AND_OUT : out STD_LOGIC;
               OR_OUT : out STD_LOGIC;
               NOT_OUT : out STD_LOGIC;
               NAND_OUT : out STD_LOGIC;
               NOR_OUT : out STD_LOGIC;
               XOR_OUT : out STD_LOGIC;
               XNOR_OUT : out STD_LOGIC);
    end component;
    
    signal A, B : STD_LOGIC := '0';
    signal AND_OUT, OR_OUT, NOT_OUT, NAND_OUT, NOR_OUT, XOR_OUT, XNOR_OUT : STD_LOGIC;

begin
    uut: logic_gates port map (
        A => A,
        B => B,
        AND_OUT => AND_OUT,
        OR_OUT => OR_OUT,
        NOT_OUT => NOT_OUT,
        NAND_OUT => NAND_OUT,
        NOR_OUT => NOR_OUT,
        XOR_OUT => XOR_OUT,
        XNOR_OUT => XNOR_OUT
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
