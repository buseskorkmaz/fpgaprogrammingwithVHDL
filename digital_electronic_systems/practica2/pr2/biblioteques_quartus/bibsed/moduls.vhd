library ieee;
use ieee.std_logic_1164.all;
package moduls is
 component bcd_err_nss
 port (
 bcd_err : in std_logic_vector(3 downto 0);
 nss : out std_logic_vector(6 downto 0)
 );
 end component;
end moduls;