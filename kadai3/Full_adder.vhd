library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_adder is
	Port( A,B,CI	: in std_logic;
			S,CO		: out std_logic
	);
end Full_adder;

architecture behavioral of Full_adder is

component Half_adder
	port( A,B	: in std_logic;
			S,CO	: out std_logic
	);
end component;

signal U0_CO,U0_S,U1_CO:std_logic;
begin
	U0:Half_adder port map (A,B,U0_S,U0_CO);
	U1:Half_adder port map (U0_S,CI,S,U1_CO);

	CO <= U0_CO or U1_CO;

end behavioral;