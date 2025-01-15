library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_subtractor_nand is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Bin : in STD_LOGIC;
           DIFF : out STD_LOGIC;
           BORROW : out STD_LOGIC
    );
end full_subtractor_nand;

architecture NAND_ONLY of full_subtractor_nand is
    signal nand1_out, nand2_out, nand3_out, nand4_out : STD_LOGIC;
    signal nand5_out, nand6_out, nand7_out, nand8_out : STD_LOGIC;
    signal nand9_out, nand10_out, nand11_out : STD_LOGIC;
    signal xor_ab : STD_LOGIC; 
begin
    nand1_out <= A NAND B;
    nand2_out <= A NAND nand1_out;
    nand3_out <= B NAND nand1_out;
    xor_ab <= nand2_out NAND nand3_out;
    
    nand4_out <= xor_ab NAND Bin;
    nand5_out <= xor_ab NAND nand4_out;
    nand6_out <= Bin NAND nand4_out;
    DIFF <= nand5_out NAND nand6_out;
    
    -- BORROW implementation
    -- BORROW = (NOT A AND B) OR (NOT(A XOR B) AND Bin)
    nand7_out <= A NAND A; -- NOT A
    nand8_out <= nand7_out NAND B; -- NOT A AND B
    nand9_out <= xor_ab NAND xor_ab; -- NOT(A XOR B)
    nand10_out <= nand9_out NAND Bin; -- NOT(A XOR B) AND Bin
    nand11_out <= nand8_out NAND nand10_out;
    BORROW <= nand11_out NAND nand11_out;
    
end NAND_ONLY;
