library ieee;
use ieee.std_logic_1164.all;

entity s_fix is
	port
	(
		sm :in std_logic;
		q :in std_logic_vector(1 downto 0);
		sf :out std_logic_vector(3 downto 0)
	);
end s_fix;
	
architecture taula_veritat of s_fix is
begin
 sf <= "0000" when (sm = '0') and (q = "00") else
			 "0001" when (sm = '0') and (q = "01") else
			 "0011" when (sm = '0') and (q = "10") else
			 "0111" when (sm = '0') and (q = "11") else
			 "1110" when (sm = '1') and (q = "00") else
			 "1100" when (sm = '1') and (q = "01") else
			 "1000" when (sm = '1') and (q = "10") else
			 "0000" when (sm = '1') and (q = "11") else
			 "XXXX" ;
end taula_veritat;
