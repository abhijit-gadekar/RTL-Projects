library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_structural is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end half_adder_structural;

architecture Structural of half_adder_structural is
  
    component and_gate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               C : out STD_LOGIC);
    end component;

    component xor_gate is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               C : out STD_LOGIC);
    end component;

    signal and_out : STD_LOGIC; 
    signal xor_out : STD_LOGIC; 

begin
    xor1: xor_gate port map (A => A, B => B, C => xor_out);
    and1: and_gate port map (A => A, B => B, C => and_out);
    Sum <= xor_out;
    Carry <= and_out;
end Structural;
