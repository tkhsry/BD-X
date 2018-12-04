library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
	port( A	: in std_logic_vector(3 downto 0);
			Y	: out std_logic_vector(7 downto 0)
	);
end Decoder;

architecture behavioral of Decoder is
begin
	process(A)
	begin
		case A is
			when "0000" => Y <= "11000000";
			when "0001" => Y <= "11111001";
			when "0010" => Y <= "10100100";
			when "0011" => Y <= "10110000";
			when "0100" => Y <= "10011001";
			when "0101" => Y <= "10010010";
			when "0110" => Y <= "10000011";
			when "0111" => Y <= "11011000";
			when "1000" => Y <= "10000000";
			when "1001" => Y <= "10010000";
			when others => Y <= "10000110";
		end case;
	end process;
end behavioral;