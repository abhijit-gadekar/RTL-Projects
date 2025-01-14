library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_nand is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end half_adder_nand;

architecture Behavioral of half_adder_nand is
    signal nand1_out : STD_LOGIC;
    signal nand2_out : STD_LOGIC;
    signal nand3_out : STD_LOGIC;
    signal nand4_out : STD_LOGIC;
begin
    nand1_out <= A NAND B;
    nand2_out <= A NAND nand1_out;
    nand3_out <= B NAND nand1_out;
    Sum <= nand2_out NAND nand3_out;
    Carry <= nand1_out NAND nand1_out;
end Behavioral;
