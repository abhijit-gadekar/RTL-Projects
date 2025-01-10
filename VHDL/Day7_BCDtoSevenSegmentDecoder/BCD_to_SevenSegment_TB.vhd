library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_to_SevenSegment_TB is
end BCD_to_SevenSegment_TB;

architecture Behavioral of BCD_to_SevenSegment_TB is
    component BCD_to_SevenSegment
        Port (
            BCD : in  STD_LOGIC_VECTOR (3 downto 0);
            Segments : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    signal BCD : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    
    signal Segments : STD_LOGIC_VECTOR(6 downto 0);

begin
    uut: BCD_to_SevenSegment PORT MAP (
        BCD => BCD,
        Segments => Segments
    );

    stim_proc: process
    begin
        for i in 0 to 9 loop
            BCD <= std_logic_vector(to_unsigned(i, 4));
            wait for 10 ns;
        end loop;

        BCD <= "1010"; 
        wait for 10 ns;

        BCD <= "1111"; 
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
