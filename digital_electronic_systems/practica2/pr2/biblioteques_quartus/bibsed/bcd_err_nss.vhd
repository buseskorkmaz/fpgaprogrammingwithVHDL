library ieee;
use ieee.std_logic_1164.all;
entity bcd_err_nss is
 port (
 bcd_err : in std_logic_vector(3 downto 0);
 nss : out std_logic_vector(6 downto 0)
 );
end bcd_err_nss;
architecture taula_veritat of bcd_err_nss is
begin
 with bcd_err select
 nss <= "1000000" when "0000",
 "1111001" when "0001",
 "0100100" when "0010",
 "0110000" when "0011",
 "0011001" when "0100",
 "0010010" when "0101",
 "0000010" when "0110",
 "1111000" when "0111",
 "0000000" when "1000",
 "0011000" when "1001",
 "0000110" when "1010",
 "0101111" when "1011",
 "1111111" when others;
end taula_veritat;