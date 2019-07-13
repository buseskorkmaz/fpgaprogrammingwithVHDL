library ieee;
use ieee.std_logic_1164.all;

entity divf is
	port(
		clk_hf : in std_logic; --50 MHz
		clk_lf : out std_logic -- 5/3 Hz experimentacio, 5/3 MHz simulacio  
	);
end divf;

architecture functional of divf is 
constant limit : integer range 15000000 downto 15 := 15000000;
signal divlimit: integer range 2**24-1 downto 0;
signal div2    : std_logic;
begin 
	comptatge: process(clk_hf)
	begin
		if(clk_hf'event and clk_hf = '1') then
			if divlimit /= limit - 1 then
				divlimit <= divlimit + 1;
			else
			 divlimit <= 0;
			 div2 <= not div2;
			end if;
		end if;
	end process comptatge;
	clk_lf <= div2 ;
end functional;
	