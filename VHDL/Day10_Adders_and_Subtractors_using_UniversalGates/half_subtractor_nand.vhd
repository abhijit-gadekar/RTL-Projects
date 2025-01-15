library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor_nand is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           DIFF : out STD_LOGIC;  
           BORROW : out STD_LOGIC  
    );
end half_subtractor_nand;

architecture NAND_ONLY of half_subtractor_nand is
    signal nand1_out : STD_LOGIC;
    signal nand2_out : STD_LOGIC;
    signal nand3_out : STD_LOGIC;
    signal nand4_out : STD_LOGIC;
    signal nand5_out : STD_LOGIC;
    signal nand6_out : STD_LOGIC;
begin
    nand1_out <= A NAND B;
    nand2_out <= A NAND nand1_out;
    nand3_out <= B NAND nand1_out;
    DIFF <= nand2_out NAND nand3_out;
   
    nand4_out <= A NAND A;
    nand5_out <= nand4_out NAND B;
    BORROW <= nand5_out NAND nand5_out;
    
end NAND_ONLY;
