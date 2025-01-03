library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates_behavioral is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           and_g : out STD_LOGIC;
           or_g : out STD_LOGIC;
           not_g : out STD_LOGIC;
           nand_g : out STD_LOGIC;
           nor_g : out STD_LOGIC;
           xor_g : out STD_LOGIC;
           xnor_g : out STD_LOGIC);
end logic_gates_behavioral;

architecture Behavioral of logic_gates_behavioral is
begin
    process(a, b)
    begin
        and_g <= a and b;
        or_g <= a or b;
        not_g <= not a;
        nand_g <= a nand b;
        nor_g <= a nor b;
        xor_g <= a xor b;
        xnor_g <= a xnor b;
    end process;
end Behavioral;
