library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux4to1 is
end tb_mux4to1;

architecture Behavioral of tb_mux4to1 is

    component mux4to1
        Port (
            i0, i1, i2, i3 : in STD_LOGIC;       
            sel            : in STD_LOGIC_VECTOR(1 downto 0); 
            y              : out STD_LOGIC      
        );
    end component;

    signal i0, i1, i2, i3 : STD_LOGIC := '0';
    signal sel            : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal y              : STD_LOGIC;

begin

    uut: mux4to1
        Port Map (
            i0 => i0,
            i1 => i1,
            i2 => i2,
            i3 => i3,
            sel => sel,
            y => y
        );

    stimulus: process
    begin
        i0 <= '1'; i1 <= '0'; i2 <= '0'; i3 <= '0';
        sel <= "00";
        wait for 10 ns;

        i0 <= '0'; i1 <= '1'; i2 <= '0'; i3 <= '0';
        sel <= "01";
        wait for 10 ns;

        i0 <= '0'; i1 <= '0'; i2 <= '1'; i3 <= '0';
        sel <= "10";
        wait for 10 ns;

        i0 <= '0'; i1 <= '0'; i2 <= '0'; i3 <= '1';
        sel <= "11";
        wait for 10 ns;

        i0 <= '1'; i1 <= '1'; i2 <= '0'; i3 <= '1';
        sel <= "00"; 
        wait for 10 ns;

        sel <= "01";  
        wait for 10 ns;

        sel <= "10";  
        wait for 10 ns;

        sel <= "11"; 
        wait for 10 ns;
          
        wait;
    end process;

end Behavioral;
