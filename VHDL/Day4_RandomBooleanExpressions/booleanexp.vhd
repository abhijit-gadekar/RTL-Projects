library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity booleanexp is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           Y : out STD_LOGIC);
end booleanexp;

architecture Behavioral of booleanexp is
begin
    process (A, B, C, D, E, F, G)
    begin
        Y <= ((A AND B) OR (C AND D)) XOR ((NOT (E AND F)) OR G);
    end process;
end Behavioral;
