library ieee;
use ieee.std_logic_1164.all;

entity tb_parallel_adder is
end tb_parallel_adder;

architecture behavior of tb_parallel_adder is
    component parallel_adder is
        port(
            A, B : in std_logic_vector(3 downto 0);
            Cin : in std_logic;
            Sum : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    signal A, B : std_logic_vector(3 downto 0);
    signal Cin : std_logic;
    signal Sum : std_logic_vector(3 downto 0);
    signal Cout : std_logic;

begin
    uut: parallel_adder port map(
        A => A,
        B => B,
        Cin => Cin,
        Sum => Sum,
        Cout => Cout
    );

    stimulus: process
    begin
        A <= "0001"; B <= "0010"; Cin <= '0';
        wait for 10 ns;
          
        A <= "1111"; B <= "0001"; Cin <= '0';
        wait for 10 ns;

        A <= "1010"; B <= "0101"; Cin <= '1';
        wait for 10 ns;

        A <= "0000"; B <= "0000"; Cin <= '0';
        wait for 10 ns;

        A <= "0110"; B <= "0011"; Cin <= '1';
        wait for 10 ns;

        wait;
    end process;
end behavior;
