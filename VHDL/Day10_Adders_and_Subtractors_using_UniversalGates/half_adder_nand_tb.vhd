library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_nand_tb is
end half_adder_nand_tb;

architecture Behavioral of half_adder_nand_tb is
    component half_adder_nand
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Sum : out STD_LOGIC;
               Carry : out STD_LOGIC);
    end component;
    
    signal A_test : STD_LOGIC := '0';
    signal B_test : STD_LOGIC := '0';
    signal Sum_test : STD_LOGIC;
    signal Carry_test : STD_LOGIC;
    
begin
    UUT: half_adder_nand port map (
        A => A_test,
        B => B_test,
        Sum => Sum_test,
        Carry => Carry_test
    );
    
    stim_proc: process
    begin
        A_test <= '0';
        B_test <= '0';
        wait for 100 ns;
  
        A_test <= '0';
        B_test <= '1';
        wait for 100 ns;
      
        A_test <= '1';
        B_test <= '0';
        wait for 100 ns;
        
        A_test <= '1';
        B_test <= '1';
        wait for 100 ns;
          
        wait;
    end process;
end Behavioral;
