library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GATES is
	Port( SW0	: in std_logic;
			SW1	: in std_logic;
			L0		: out std_logic;
			L1		: out std_logic;
			L2		: out std_logic;
			L3		: out std_logic;
			L4		: out std_logic
);
end GATES;

architecture behavioral of GATES is

signal L0P : std_logic;
signal L1P : std_logic;
signal L2P : std_logic;
signal L3P : std_logic;
signal L4P : std_logic;

begin

L0P <= not SW0;
L1P <= SW0 and SW1;
L2P <= SW0 or SW1;
L3P <= SW0 nand SW1;
L4P <= SW0 nor SW1;

L0 <= not L0P;
L1 <= not L1P;
L2 <= not L2P;
L3 <= not L3P;
L4 <= not L4P;

end behavioral;