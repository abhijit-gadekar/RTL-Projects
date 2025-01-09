library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_structural_tb is
end FullAdder_structural_tb;

architecture Behavioral of FullAdder_structural_tb is

    component FullAdder_structural is
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            Cin   : in  STD_LOGIC;
            Sum   : out STD_LOGIC;
            Cout  : out STD_LOGIC
        );
    end component;

    signal A, B, Cin : STD_LOGIC;
    signal Sum, Cout : STD_LOGIC;

begin

    DUT: FullAdder_structural
        port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    process
    begin
        A <= '0'; B <= '0'; Cin <= '0';
        wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1';
        wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0';
        wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1';
        wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0';
        wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '1';
        wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0';
        wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1';
        wait for 10 ns;
        wait;
    end process;

end Behavioral;
