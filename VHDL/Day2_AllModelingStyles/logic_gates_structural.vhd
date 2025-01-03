library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates_structural is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           and_g : out STD_LOGIC;
           or_g : out STD_LOGIC;
           not_g : out STD_LOGIC;
           nand_g : out STD_LOGIC;
           nor_g : out STD_LOGIC;
           xor_g : out STD_LOGIC;
           xnor_g : out STD_LOGIC);
end logic_gates_structural;

architecture Structural of logic_gates_structural is
    
    component AND_GATE is
        Port ( A, B : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;
  
    component OR_GATE is
        Port ( A, B : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    component NOT_GATE is
        Port ( A : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    component XOR_GATE is
        Port ( A, B : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal and_out, or_out, xor_out : STD_LOGIC;

begin
    U1: AND_GATE port map (A => a, B => b, Y => and_out);
    U2: OR_GATE port map (A => a, B => b, Y => or_out);
    U3: NOT_GATE port map (A => a, Y => not_g);
    U4: XOR_GATE port map (A => a, B => b, Y => xor_out);

    and_g <= and_out;
    or_g <= or_out;
    nand_g <= not and_out;
    nor_g <= not or_out;
    xor_g <= xor_out;
    xnor_g <= not xor_out;

end Structural;
