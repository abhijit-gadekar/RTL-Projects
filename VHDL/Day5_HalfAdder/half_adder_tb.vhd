library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
end half_adder_tb;

architecture behavior of half_adder_tb is
    signal A, B : STD_LOGIC := '0';
    signal Sum, Carry : STD_LOGIC;

    component half_adder
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Sum : out STD_LOGIC;
               Carry : out STD_LOGIC);
    end component;

begin
    uut: half_adder
        Port map ( A => A, 
                   B => B,
                   Sum => Sum,
                   Carry => Carry);

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
end behavior;
