library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1to2 is
    Port ( 
        input : in STD_LOGIC;          
        sel : in STD_LOGIC;            
        output0 : out STD_LOGIC;       
        output1 : out STD_LOGIC        
    );
end demux1to2;
  
architecture Behavioral of demux1to2 is
begin
    output0 <= input when sel = '0' else '0';
    output1 <= input when sel = '1' else '0';
end Behavioral;
