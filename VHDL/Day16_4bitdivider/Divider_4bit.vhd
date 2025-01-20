library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divider_4bit is
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0); 
        B : in  STD_LOGIC_VECTOR(3 downto 0); 
        Q : out STD_LOGIC_VECTOR(3 downto 0); 
        R : out STD_LOGIC_VECTOR(3 downto 0)  
    );
end Divider_4bit;

architecture Behavioral of Divider_4bit is
begin
    process(A, B)
    begin
        if B /= "0000" then 
            Q <= STD_LOGIC_VECTOR(unsigned(A) / unsigned(B));
            R <= STD_LOGIC_VECTOR(unsigned(A) mod unsigned(B));
        else
            Q <= (others => '0'); 
            R <= (others => '0');
        end if;
    end process;
end Behavioral;
