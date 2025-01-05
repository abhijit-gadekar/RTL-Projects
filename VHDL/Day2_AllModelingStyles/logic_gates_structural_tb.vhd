library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates_structural_tb is
end logic_gates_structural_tb;

architecture Behavioral of logic_gates_structural_tb is
    component logic_gates_structural
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               and_g : out STD_LOGIC;
               or_g : out STD_LOGIC;
               not_g : out STD_LOGIC;
               nand_g : out STD_LOGIC;
               nor_g : out STD_LOGIC;
               xor_g : out STD_LOGIC;
               xnor_g : out STD_LOGIC);
    end component;
    
    signal a, b : STD_LOGIC := '0';
    signal and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g : STD_LOGIC;

begin
    uut: logic_gates_structural port map (
        a => a,
        b => b,
        and_g => and_g,
        or_g => or_g,
        not_g => not_g,
        nand_g => nand_g,
        nor_g => nor_g,
        xor_g => xor_g,
        xnor_g => xnor_g
    );

    stim_proc: process
    begin
        a <= '0';
        b <= '0';
        wait for 10 ns;
        
        a <= '0';
        b <= '1';
        wait for 10 ns;
      
        a <= '1';
        b <= '0';
        wait for 10 ns;
        
        a <= '1';
        b <= '1';
        wait for 10 ns;
        
        wait;
    end process;

end Behavioral;
