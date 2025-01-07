library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture Behavioral of full_adder_tb is
    component full_adder
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Cin : in  STD_LOGIC;
            Sum : out STD_LOGIC;
            Carry : out STD_LOGIC
        );
    end component;

    signal A_tb : STD_LOGIC := '0';
    signal B_tb : STD_LOGIC := '0';
    signal Cin_tb : STD_LOGIC := '0';

    signal Sum_tb : STD_LOGIC;
    signal Carry_tb : STD_LOGIC;

begin
    uut: full_adder port map (
        A => A_tb,
        B => B_tb,
        Cin => Cin_tb,
        Sum => Sum_tb,
        Carry => Carry_tb
    );

    stim_proc: process
    begin
        A_tb <= '0'; B_tb <= '0'; Cin_tb <= '0';
        wait for 10 ns;
          
        A_tb <= '0'; B_tb <= '0'; Cin_tb <= '1';
        wait for 10 ns;

        A_tb <= '0'; B_tb <= '1'; Cin_tb <= '0';
        wait for 10 ns;
        
        A_tb <= '0'; B_tb <= '1'; Cin_tb <= '1';
        wait for 10 ns;
       
        A_tb <= '1'; B_tb <= '0'; Cin_tb <= '0';
        wait for 10 ns;
        
        A_tb <= '1'; B_tb <= '0'; Cin_tb <= '1';
        wait for 10 ns;
        
        A_tb <= '1'; B_tb <= '1'; Cin_tb <= '0';
        wait for 10 ns;
        
        A_tb <= '1'; B_tb <= '1'; Cin_tb <= '1';
        wait for 10 ns;
      
        wait;
    end process;

end Behavioral;
