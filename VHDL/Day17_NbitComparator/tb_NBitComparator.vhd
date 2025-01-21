library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_NBitComparator is
end tb_NBitComparator;

architecture Behavioral of tb_NBitComparator is
  constant N : integer := 8; 

  signal A      : STD_LOGIC_VECTOR(N-1 downto 0);
  signal B      : STD_LOGIC_VECTOR(N-1 downto 0);
  signal A_gt_B : STD_LOGIC;
  signal A_eq_B : STD_LOGIC;
  signal A_lt_B : STD_LOGIC;

begin
  uut: entity work.NBitComparator
    Port map (
      A => A,
      B => B,
      A_gt_B => A_gt_B,
      A_eq_B => A_eq_B,
      A_lt_B => A_lt_B
    );

  process
  begin
    A <= "00000001"; B <= "00000010";
    wait for 10 ns;
    A <= "00000010"; B <= "00000010";
    wait for 10 ns;
    A <= "00000100"; B <= "00000010";
    wait for 10 ns;
    wait;
  end process;

end Behavioral;
