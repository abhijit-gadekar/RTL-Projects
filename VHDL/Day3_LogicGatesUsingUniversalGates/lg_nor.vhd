library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lg_nor is
    Port ( A, B : in STD_LOGIC;
           NOT_OUT, AND_OUT, OR_OUT, XOR_OUT, NAND_OUT : out STD_LOGIC);
end lg_nor;

architecture Behavioral of lg_nor is
    signal NOR_OUT : STD_LOGIC;
begin
    -- NOR gate
    NOR_OUT <= A nor B;
    
    -- NOT gate using NOR
    NOT_OUT <= A nor A;
    
    -- OR gate using NOR
    OR_OUT <= (A nor B) nor (A nor B);
    
    -- AND gate using NOR
    AND_OUT <= (A nor A) nor (B nor B);
    
    -- XOR gate using NOR
    XOR_OUT <= ((A nor (A nor B)) nor (B nor (A nor B))) nor ((A nor (A nor B)) nor (B nor (A nor B)));
    
    -- NAND gate using NOR
    NAND_OUT <= (A nor B) nor (A nor B);
    
end Behavioral;
