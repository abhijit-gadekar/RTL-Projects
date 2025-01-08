library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_structural is
    Port ( A     : in  STD_LOGIC;
           B     : in  STD_LOGIC;
           Cin   : in  STD_LOGIC;
           Sum   : out STD_LOGIC;
           Cout  : out STD_LOGIC);
end FullAdder_structural;

architecture Structural of FullAdder_structural is

    component HalfAdder is
        Port ( A     : in  STD_LOGIC;
               B     : in  STD_LOGIC;
               Sum   : out STD_LOGIC;
               Cout  : out STD_LOGIC);
    end component;

    signal Sum1, Cout1, Cout2 : STD_LOGIC;

begin

    HA1: HalfAdder port map (A, B, Sum1, Cout1);
    HA2: HalfAdder port map (Sum1, Cin, Sum, Cout2);
    Cout <= Cout1 or Cout2;

end Structural;
