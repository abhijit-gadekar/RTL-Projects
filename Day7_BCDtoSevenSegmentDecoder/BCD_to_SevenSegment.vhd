library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_to_SevenSegment is
    Port (
        BCD : in  STD_LOGIC_VECTOR (3 downto 0); 
        Segments : out STD_LOGIC_VECTOR (6 downto 0) 
    );
end BCD_to_SevenSegment;

architecture TruthTable of BCD_to_SevenSegment is
begin
    process(BCD)
    begin
        case BCD is
            when "0000" => Segments <= "0000001"; -- 0
            when "0001" => Segments <= "1001111"; -- 1
            when "0010" => Segments <= "0010010"; -- 2
            when "0011" => Segments <= "0000110"; -- 3
            when "0100" => Segments <= "1001100"; -- 4
            when "0101" => Segments <= "0100100"; -- 5
            when "0110" => Segments <= "0100000"; -- 6
            when "0111" => Segments <= "0001111"; -- 7
            when "1000" => Segments <= "0000000"; -- 8
            when "1001" => Segments <= "0000100"; -- 9
            when others => Segments <= "1111111"; -- Blank or invalid input
        end case;
    end process;

end TruthTable;
