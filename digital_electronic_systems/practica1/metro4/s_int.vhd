library altera;
use altera.maxplus2.all;

library ieee;
use ieee.std_logic_1164.all;

entity s_int is
	port(
		osc  : in std_logic;
		q    : in std_logic_vector(1 downto 0);
		si   : out std_logic_vector(3 downto 0)
	);
end s_int;
	
architecture mixta of s_int is
	signal logic0  : std_logic;
	signal logic1  : std_logic;
	signal yn      : std_logic_vector(3 downto 0);
begin
	logic0 <= '0';
	logic1 <= '1';
	descod : a_74138 port map(
					 g1 => logic1, g2an => logic0, g2bn => logic0, a => q(0), b => q(1),
					 c => logic0, y0n => yn(0), y1n => yn(1) , y2n => yn(2), y3n => yn(3));
	si(0) <= not (osc or yn(0));
	si(1) <= not (osc or yn(1));
	si(2) <= not (osc or yn(2));
	si(3) <= not (osc or yn(3));
end mixta;
