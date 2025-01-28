library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1to8_tb is
end demux1to8_tb;

architecture Behavioral of demux1to8_tb is
    component demux1to8 is
        Port ( 
            input : in STD_LOGIC;
            sel : in STD_LOGIC_VECTOR(2 downto 0);
            output : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    signal input_tb : STD_LOGIC := '1';                    
    signal sel_tb : STD_LOGIC_VECTOR(2 downto 0) := "000";  
    signal output_tb : STD_LOGIC_VECTOR(7 downto 0);       
    
begin
    DUT: demux1to8 port map (
        input => input_tb,
        sel => sel_tb,
        output => output_tb
    );
    
    test_process: process
    begin
        sel_tb <= "000";
        wait for 10 ns;
        
        sel_tb <= "011";
        wait for 10 ns;

        sel_tb <= "111";
        wait for 10 ns;

        input_tb <= '0';
        sel_tb <= "011";
        wait for 10 ns;
        
        input_tb <= '1';
        sel_tb <= "101";
        wait for 10 ns;
        
        wait;
    end process;
    
end Behavioral;
