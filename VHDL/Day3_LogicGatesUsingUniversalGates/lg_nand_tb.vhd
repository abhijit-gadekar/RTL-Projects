library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lg_nand_tb is
end lg_nand_tb;

architecture Behavioral of lg_nand_tb is
    component lg_nand
        Port ( A, B : in STD_LOGIC;
               NOT_OUT, AND_OUT, OR_OUT, XOR_OUT, NOR_OUT : out STD_LOGIC);
    end component;
    
    signal A, B : STD_LOGIC := '0';
    signal NOT_OUT, AND_OUT, OR_OUT, XOR_OUT, NOR_OUT : STD_LOGIC;

begin
    uut: lg_nand port map (
        A => A,
        B => B,
        NOT_OUT => NOT_OUT,
        AND_OUT => AND_OUT,
        OR_OUT => OR_OUT,
        XOR_OUT => XOR_OUT,
        NOR_OUT => NOR_OUT
    );

    stim_proc: process
    begin
        A <= '0';
        B <= '0';
        wait for 10 ns;
        
        A <= '0';
        B <= '1';
        wait for 10 ns;
        
        A <= '1';
        B <= '0';
        wait for 10 ns;
        
        A <= '1';
        B <= '1';
        wait for 10 ns;
        
        wait;
    end process;

end Behavioral;
