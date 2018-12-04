library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity J_CNT is
	port( RST,CLK	: in std_logic;
			Q	: out std_logic_vector(3 downto 0)
	);
end J_CNT;

architecture behavioral of J_CNT is

signal CNT: std_logic_vector(3 downto 0);
signal CLK_CNT: std_logic_vector(25 downto 0);
signal CLK_1Hz: std_logic;

begin
	process(CLK)
	begin
		if(CLK'event and CLK='1') then
			CLK_CNT<=CLK_CNT+1;
		end if;
	end process;
	
	CLK_1Hz <= CLK_CNT(25);
	Q <= CNT;
	
	process(RST,CLK_1Hz)
		begin
			if RST = '0' then
				CNT <= (others => '0');
			else
				if CLK_1Hz'event and CLK_1Hz='1' then
					CNT <= CNT(2 downto 0) & (not CNT(3));
				end if;
			end if;
	end process;
end behavioral;