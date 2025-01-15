library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor_nand_tb is
end half_subtractor_nand_tb;

architecture Behavioral of half_subtractor_nand_tb is
    component half_subtractor_nand
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               DIFF : out STD_LOGIC;
               BORROW : out STD_LOGIC
        );
    end component;
    
    signal A_test : STD_LOGIC := '0';
    signal B_test : STD_LOGIC := '0';
    signal DIFF_test : STD_LOGIC;
    signal BORROW_test : STD_LOGIC;

begin
    UUT: half_subtractor_nand port map (
        A => A_test,
        B => B_test,
        DIFF => DIFF_test,
        BORROW => BORROW_test
    );
    
    stim_proc: process
    begin
        A_test <= '0';
        B_test <= '0';
        wait for 100 ns;
        
        A_test <= '1';
        B_test <= '0';
        wait for 100 ns;
        
        A_test <= '0';
        B_test <= '1';
        wait for 100 ns;
        
        A_test <= '1';
        B_test <= '1';
        wait for 100 ns;
        
        wait;
    end process;

end Behavioral;
