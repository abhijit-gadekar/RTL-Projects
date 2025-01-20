library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplier is
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input A
        B : in  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input B
        P : out STD_LOGIC_VECTOR(7 downto 0)  -- 8-bit output P (Product)
    );
end Multiplier;

architecture Behavioral of Multiplier is
begin
    process(A, B)
    begin
        P <= STD_LOGIC_VECTOR(unsigned(A) * unsigned(B));
    end process;
end Behavioral;
