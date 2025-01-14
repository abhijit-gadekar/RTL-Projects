library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_nand is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder_nand;

architecture Behavioral of full_adder_nand is
    signal nand1_out, nand2_out, nand3_out, nand4_out : STD_LOGIC;
    signal nand5_out, nand6_out, nand7_out, nand8_out : STD_LOGIC;
    signal nand9_out, nand10_out, nand11_out : STD_LOGIC;
begin
    nand1_out <= A NAND B;
    nand2_out <= A NAND nand1_out;
    nand3_out <= B NAND nand1_out;
    nand4_out <= nand2_out NAND nand3_out; 
    nand5_out <= nand4_out NAND Cin;
    nand6_out <= nand4_out NAND nand5_out;
    nand7_out <= Cin NAND nand5_out;
    Sum <= nand6_out NAND nand7_out;
    
    nand8_out <= nand4_out NAND Cin; 
    nand9_out <= A NAND B;            
    nand10_out <= nand8_out NAND nand9_out;
    Cout <= nand10_out NAND nand10_out;  
end Behavioral;
