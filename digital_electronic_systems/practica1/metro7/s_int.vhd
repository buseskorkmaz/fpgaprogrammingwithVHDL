library altera;
use altera.maxplus2.all;

library ieee;
use ieee.std_logic_1164.all;

entity s_int is
	port(
		osc  : in std_logic;
		q    : in std_logic_vector(2 downto 0);
		si   : out std_logic_vector(6 downto 0)
	);
end s_int;
	
architecture mixta of s_int is
	signal logic0  : std_logic;
	signal logic1  : std_logic;
	signal yn      : std_logic_vector(6 downto 0);
begin
	logic0 <= '0';
	logic1 <= '1';
	descod : a_74138 port map(
					 g1 => logic1, g2an => logic0, g2bn => logic0, a => q(0), b => q(1),
					 c => q(2), y0n => yn(0), y1n => yn(1) , y2n => yn(2), y3n => yn(3),
					 y4n => yn(4) , y5n => yn(5), y6n => yn(6));
	si(0) <= not (osc or yn(0));
	si(1) <= not (osc or yn(1));
	si(2) <= not (osc or yn(2));
	si(3) <= not (osc or yn(3));
	si(4) <= not (osc or yn(4));
	si(5) <= not (osc or yn(5));
	si(6) <= not (osc or yn(6));
end mixta;
