library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_nand_tb is
end full_adder_nand_tb;

architecture Behavioral of full_adder_nand_tb is
    component full_adder_nand
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Sum : out STD_LOGIC;
               Cout : out STD_LOGIC);
    end component;
    
    signal A_test : STD_LOGIC := '0';
    signal B_test : STD_LOGIC := '0';
    signal Cin_test : STD_LOGIC := '0';
    signal Sum_test : STD_LOGIC;
    signal Cout_test : STD_LOGIC;
    
begin
    UUT: full_adder_nand port map (
        A => A_test,
        B => B_test,
        Cin => Cin_test,
        Sum => Sum_test,
        Cout => Cout_test
    );
    
    stim_proc: process
    begin
        A_test <= '0'; B_test <= '0'; Cin_test <= '0';
        wait for 100 ns;
      
        A_test <= '0'; B_test <= '0'; Cin_test <= '1';
        wait for 100 ns;
      
        A_test <= '0'; B_test <= '1'; Cin_test <= '0';
        wait for 100 ns;
      
        A_test <= '0'; B_test <= '1'; Cin_test <= '1';
        wait for 100 ns;
       
        A_test <= '1'; B_test <= '0'; Cin_test <= '0';
        wait for 100 ns;
      
        A_test <= '1'; B_test <= '0'; Cin_test <= '1';
        wait for 100 ns;
        
        A_test <= '1'; B_test <= '1'; Cin_test <= '0';
        wait for 100 ns;
        
        A_test <= '1'; B_test <= '1'; Cin_test <= '1';
        wait for 100 ns;
       
        wait;
    end process;
end Behavioral;
