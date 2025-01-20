library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplier_tb is
end Multiplier_tb;

architecture Behavioral of Multiplier_tb is

    signal A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal P : STD_LOGIC_VECTOR(7 downto 0);

    component Multiplier
        Port (
            A : in  STD_LOGIC_VECTOR(3 downto 0);
            B : in  STD_LOGIC_VECTOR(3 downto 0);
            P : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

begin

    uut: Multiplier
        Port map (
            A => A,
            B => B,
            P => P
        );

    stim_proc: process
    begin
        A <= "0001"; 
        B <= "0010"; 
        wait for 10 ns;
        
        A <= "0011"; 
        B <= "0101"; 
        wait for 10 ns;

        A <= "1111"; 
        B <= "1111"; 
        wait for 10 ns;

        A <= "1001"; 
        B <= "0110"; 
        wait for 10 ns;
        
        wait;
    end process;
end Behavioral;
