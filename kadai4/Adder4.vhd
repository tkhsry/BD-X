library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder4 is
	port( A,B	: in std_logic_vector(3 downto 0);
			CI : in std_logic;
			Y	: out std_logic_vector(3 downto 0);
			CO	: out std_logic
	);
end Adder4;

architecture Behavioral of Adder4 is

component Full_adder
	port(
		A,B,CI	: in std_logic;
		S,CO		: out std_logic
	);
end component;

signal U0_C,U1_C,U2_C:std_logic;
begin
U0:Full_adder port map (A(0),B(0),CI,Y(0),U0_C);
U1:Full_adder port map (A(1),B(1),U0_C,Y(1),U1_C);
U2:Full_adder port map (A(2),B(2),U1_C,Y(2),U2_C);
U3:Full_adder port map (A(3),B(3),U2_C,Y(3),CO);
end Behavioral;