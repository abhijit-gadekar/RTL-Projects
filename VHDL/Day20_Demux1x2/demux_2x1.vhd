library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_2x1 is
    Port ( I : in STD_LOGIC;
           S : in STD_LOGIC;
           Y0 : out STD_LOGIC;
           Y1 : out STD_LOGIC);
end demux_2x1;

architecture Behavioral of demux_2x1 is
begin
    process(I, S)
    begin
        if (S = '0') then
            Y0 <= I;
            Y1 <= '0';
        else
            Y0 <= '0';
            Y1 <= I;
        end if;
    end process;
end Behavioral;
