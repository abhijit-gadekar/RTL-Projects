library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor_structural is
    Port (
        A, B : in STD_LOGIC;
        DIFF, BORROW : out STD_LOGIC
    );
end half_subtractor_structural;

architecture structural of half_subtractor_structural is
    component xor_gate
        Port (
            X, Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;
    
    component and_gate
        Port (
            X, Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;
    
    component not_gate
        Port (
            X : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;
    
    signal A_not : STD_LOGIC;
    
begin
    XOR1: xor_gate port map (X => A, Y => B, Z => DIFF);
    NOT1: not_gate port map (X => A, Z => A_not);
    AND1: and_gate port map (X => A_not, Y => B, Z => BORROW);
end structural;
