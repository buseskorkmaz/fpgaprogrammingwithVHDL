library ieee;
use ieee.std_logic_1164.all;

entity s_fix is
	port
	(
		sm :in std_logic;
		q :in std_logic_vector(2 downto 0);
		sf :out std_logic_vector(6 downto 0)
	);
end s_fix;
	
architecture taula_veritat of s_fix is
begin
 sf <= "0000000" when (sm = '0') and (q = "000") else
			 "0000001" when (sm = '0') and (q = "001") else
			 "0000011" when (sm = '0') and (q = "010") else
			 "0000111" when (sm = '0') and (q = "011") else
			 "0001111" when (sm = '0') and (q = "100") else
			 "0011111" when (sm = '0') and (q = "101") else
			 "0111111" when (sm = '0') and (q = "110") else
			 "1111111" when (sm = '0') and (q = "111") else
			 "1111110" when (sm = '1') and (q = "000") else
			 "1111100" when (sm = '1') and (q = "001") else
			 "1111000" when (sm = '1') and (q = "010") else
			 "1110000" when (sm = '1') and (q = "011") else
			 "1100000" when (sm = '1') and (q = "100") else
			 "1000000" when (sm = '1') and (q = "101") else
			 "0000000" when (sm = '1') and (q = "110") else
			 "XXXXXXX" ;
end taula_veritat;
