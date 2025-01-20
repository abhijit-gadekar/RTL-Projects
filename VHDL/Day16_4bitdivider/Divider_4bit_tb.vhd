library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divider_4bit_tb is
end Divider_4bit_tb;

architecture Behavioral of Divider_4bit_tb is

    signal A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Q : STD_LOGIC_VECTOR(3 downto 0);
    signal R : STD_LOGIC_VECTOR(3 downto 0);

    component Divider_4bit
        Port (
            A : in  STD_LOGIC_VECTOR(3 downto 0);
            B : in  STD_LOGIC_VECTOR(3 downto 0);
            Q : out STD_LOGIC_VECTOR(3 downto 0);
            R : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

begin

    uut: Divider_4bit
        Port map (
            A => A,
            B => B,
            Q => Q,
            R => R
        );

    stim_proc: process
    begin
        A <= "1000"; 
        B <= "0010"; 
        wait for 10 ns;
        
        A <= "0111"; 
        B <= "0011"; 
        wait for 10 ns;

        A <= "1111"; 
        B <= "0100"; 
        wait for 10 ns;

        A <= "0101"; 
        B <= "0000"; 
        wait for 10 ns;

        A <= "1100"; 
        B <= "0110"; 
        wait for 10 ns;

        wait;
    end process;
end Behavioral;
