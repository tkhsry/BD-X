library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_adder is
	Port( A,B	: in std_logic;
			S,CO	: out std_logic
	);
end Half_adder;

architecture behavioral of Half_adder is
begin

S <= A xor B;
CO <= A and B;

end behavioral;