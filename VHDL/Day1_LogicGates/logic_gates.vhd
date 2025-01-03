library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           AND_OUT : out STD_LOGIC;
           OR_OUT : out STD_LOGIC;
           NOT_OUT : out STD_LOGIC;
           NAND_OUT : out STD_LOGIC;
           NOR_OUT : out STD_LOGIC;
           XOR_OUT : out STD_LOGIC;
           XNOR_OUT : out STD_LOGIC);
end logic_gates;

architecture Behavioral of logic_gates is
begin
    AND_OUT <= A and B;
    OR_OUT <= A or B;
    NOT_OUT <= not A;
    NAND_OUT <= A nand B;
    NOR_OUT <= A nor B;
    XOR_OUT <= A xor B;
    XNOR_OUT <= A xnor B;
end Behavioral;
