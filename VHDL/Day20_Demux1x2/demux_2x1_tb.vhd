library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_2x1_tb is
end demux_2x1_tb;

architecture Behavioral of demux_2x1_tb is
    component demux_2x1
        Port ( I : in STD_LOGIC;
               S : in STD_LOGIC;
               Y0 : out STD_LOGIC;
               Y1 : out STD_LOGIC);
    end component;
    
    signal I, S, Y0, Y1 : STD_LOGIC;
begin
    uut: demux_2x1 port map (I => I, S => S, Y0 => Y0, Y1 => Y1);
    
    stim_proc: process
    begin
        I <= '1';
        S <= '0';
        wait for 10 ns;
        
        S <= '1';
        wait for 10 ns;
        
        I <= '0';
        S <= '0';
        wait for 10 ns;
        
        S <= '1';
        wait for 10 ns;
        
        wait;
    end process;
end Behavioral;
