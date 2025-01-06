library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_booleanexp is
end tb_booleanexp;

architecture behavior of tb_booleanexp is
    signal A, B, C, D, E, F, G : STD_LOGIC := '0';
    signal Y : STD_LOGIC;
    component booleanexp
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               C : in  STD_LOGIC;
               D : in  STD_LOGIC;
               E : in  STD_LOGIC;
               F : in  STD_LOGIC;
               G : in  STD_LOGIC;
               Y : out STD_LOGIC );
    end component;

begin
    uut: booleanexp
        Port map ( A => A, 
                   B => B,
                   C => C,
                   D => D,
                   E => E,
                   F => F,
                   G => G,
                   Y => Y );
    stim_proc: process
    begin        
        A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; F <= '0'; G <= '0';
        wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1'; D <= '0'; E <= '1'; F <= '0'; G <= '1';
        wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0'; D <= '1'; E <= '0'; F <= '1'; G <= '0';
        wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1'; D <= '1'; E <= '1'; F <= '1'; G <= '1';
        wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0'; D <= '1'; E <= '1'; F <= '0'; G <= '1';
        wait for 10 ns;
        wait;
    end process;
end behavior;
