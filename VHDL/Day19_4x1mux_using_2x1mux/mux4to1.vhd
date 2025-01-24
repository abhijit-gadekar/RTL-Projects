library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
    Port (
        i0, i1, i2, i3 : in STD_LOGIC;  
        sel            : in STD_LOGIC_VECTOR(1 downto 0); 
        y              : out STD_LOGIC  
    );
end mux4to1;

architecture Structural of mux4to1 is

    component mux2to1
        Port (
            a : in STD_LOGIC;      
            b : in STD_LOGIC;      
            sel : in STD_LOGIC;    
            y : out STD_LOGIC      
        );
    end component;
  
    signal mux1_out, mux2_out : STD_LOGIC;

begin

    mux1: mux2to1 Port Map (
        a => i0, 
        b => i1, 
        sel => sel(0), 
        y => mux1_out
    );

    mux2: mux2to1 Port Map (
        a => i2, 
        b => i3, 
        sel => sel(0), 
        y => mux2_out
    );

    mux3: mux2to1 Port Map (
        a => mux1_out, 
        b => mux2_out, 
        sel => sel(1), 
        y => y
    );

end Structural;
