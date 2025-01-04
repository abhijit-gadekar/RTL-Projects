library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lg_nand is
    Port ( A, B : in STD_LOGIC;
           NOT_OUT, AND_OUT, OR_OUT, XOR_OUT, NOR_OUT : out STD_LOGIC);
end lg_nand;

architecture Behavioral of lg_nand is
    signal NAND_OUT : STD_LOGIC;
begin
    -- NAND gate (built-in)
    NAND_OUT <= A nand B;
    
    -- NOT gate using NAND
    NOT_OUT <= A nand A;
    
    -- AND gate using NAND
    AND_OUT <= NAND_OUT nand NAND_OUT;
    
    -- OR gate using NAND
    OR_OUT <= (A nand A) nand (B nand B);
    
    -- XOR gate using NAND
    XOR_OUT <= (A nand (A nand B)) nand (B nand (A nand B));
    
    -- NOR gate using NAND
    NOR_OUT <= ((A nand A) nand (B nand B)) nand ((A nand A) nand (B nand B));
    
end Behavioral;
