library ieee;
use ieee.std_logic_1164.all;

entity parallel_adder is
    port(
        A, B : in std_logic_vector(3 downto 0);
        Cin : in std_logic;
        Sum : out std_logic_vector(3 downto 0);
        Cout : out std_logic
    );
end parallel_adder;

architecture behavioral of parallel_adder is
    signal C : std_logic_vector(3 downto 0); 
    component full_adder is
        port(
            X, Y, Cin : in std_logic;
            Sum, Cout : out std_logic
        );
    end component;
begin
    FA0: full_adder port map(A(0), B(0), Cin, Sum(0), C(0));
    FA1: full_adder port map(A(1), B(1), C(0), Sum(1), C(1));
    FA2: full_adder port map(A(2), B(2), C(1), Sum(2), C(2));
    FA3: full_adder port map(A(3), B(3), C(2), Sum(3), Cout);
end behavioral;
