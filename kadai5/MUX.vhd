library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
	port( A,B	: in std_logic;
			S 	: in std_logic;
			Y	: out std_logic
	);
end MUX;

architecture behavioral of MUX is
begin
	process(A,B,S)
	begin
	if S='0' then 
		Y <= A;
	else
		Y <= B;
	end if;
	end process;
end behavioral;