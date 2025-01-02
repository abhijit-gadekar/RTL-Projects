library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates is
    Port (
        A : in STD_LOGIC;         -- Input A
        B : in STD_LOGIC;         -- Input B
        AND_OUT : out STD_LOGIC;  -- Output for AND gate
        OR_OUT : out STD_LOGIC;   -- Output for OR gate
        NAND_OUT : out STD_LOGIC; -- Output for NAND gate
        NOR_OUT : out STD_LOGIC;  -- Output for NOR gate
        XOR_OUT : out STD_LOGIC;  -- Output for XOR gate
        XNOR_OUT : out STD_LOGIC; -- Output for XNOR gate
        NOT_A : out STD_LOGIC;    -- Output for NOT gate
    );
end logic_gates;

architecture Behavioral of logic_gates is
begin
    AND_OUT <= A AND B;
    OR_OUT <= A OR B;
    NOT_A <= NOT A;
    NAND_OUT <= NOT (A AND B);
    NOR_OUT <= NOT (A OR B);
    XOR_OUT <= A XOR B;
    XNOR_OUT <= A XNOR B;
end Behavioral;
