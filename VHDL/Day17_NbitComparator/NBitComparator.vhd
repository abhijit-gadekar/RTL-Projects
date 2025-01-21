library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity NBitComparator is
  Generic ( N : integer := 8 ); 
  Port (
    A      : in  STD_LOGIC_VECTOR(N-1 downto 0);
    B      : in  STD_LOGIC_VECTOR(N-1 downto 0);
    A_gt_B : out STD_LOGIC; 
    A_eq_B : out STD_LOGIC; 
    A_lt_B : out STD_LOGIC  
  );
end NBitComparator;

architecture Behavioral of NBitComparator is
begin
  process(A, B)
    variable A_unsigned : unsigned(A'range);
    variable B_unsigned : unsigned(B'range);
  begin
    A_unsigned := unsigned(A);
    B_unsigned := unsigned(B);
    A_gt_B <= '1' when A_unsigned > B_unsigned else '0';
    A_eq_B <= '1' when A_unsigned = B_unsigned else '0';
    A_lt_B <= '1' when A_unsigned < B_unsigned else '0';
  end process;
end Behavioral;
