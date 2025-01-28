library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1to8 is
    Port ( 
        input : in STD_LOGIC;                      
        sel : in STD_LOGIC_VECTOR(2 downto 0);     
        output : out STD_LOGIC_VECTOR(7 downto 0)  
    );
end demux1to8;

architecture Behavioral of demux1to8 is
    component demux1to2 is
        Port ( 
            input : in STD_LOGIC;
            sel : in STD_LOGIC;
            output0 : out STD_LOGIC;
            output1 : out STD_LOGIC
        );
    end component;
    
    signal level1_outputs : STD_LOGIC_VECTOR(1 downto 0);
    signal level2_outputs : STD_LOGIC_VECTOR(3 downto 0);
    
begin
    DEMUX_L1: demux1to2 port map (input => input, sel => sel(2), output0 => level1_outputs(0), output1 => level1_outputs(1));
    DEMUX_L2_0: demux1to2 port map (input => level1_outputs(0), sel => sel(1), output0 => level2_outputs(0), output1 => level2_outputs(1));
    DEMUX_L2_1: demux1to2 port map (input => level1_outputs(1), sel => sel(1), output0 => level2_outputs(2), output1 => level2_outputs(3)); 
    DEMUX_L3_0: demux1to2 port map (input => level2_outputs(0), sel => sel(0), output0 => output(0), output1 => output(1));
    DEMUX_L3_1: demux1to2 port map (input => level2_outputs(1), sel => sel(0), output0 => output(2), output1 => output(3));
    DEMUX_L3_2: demux1to2 port map (input => level2_outputs(2), sel => sel(0), output0 => output(4), output1 => output(5));
    DEMUX_L3_3: demux1to2 port map (input => level2_outputs(3), sel => sel(0), output0 => output(6), output1 => output(7));
end Behavioral;
