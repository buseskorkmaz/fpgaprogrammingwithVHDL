library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity csporta is
  generic
	(
		versio : string := "experimentacio" -- "simulacio" o "experimentacio"
	);
	port
	(
		clk50m : in std_logic;
		fci, fca, npob, cmd : in std_logic;
		pia, pai, enp, nledet : out std_logic
		
	);
end csporta;

architecture funcional of csporta is
	signal clk400 : std_logic;
	signal qcmd : std_logic;
	signal qfci, qfca : std_logic;
	signal qpob, qpobf : std_logic;
	signal fiinici_qpof : std_logic;
	
	--
	type state_type is (s0, s1, s2, s3, s4, s5);
	
	signal state : state_type := s0;
	
begin

--
-- divisor de frequencia
	divf1 : process (clk50m)
	constant limit : integer := 125000/2-1;
	variable cntdivf1 : integer range limit downto 0 := 0;

	begin
		if (versio = "experimentacio") then
			if clk50m'event and clk50m = '1' then
				if cntdivf1 /= limit then
					cntdivf1 := cntdivf1+1;
				else
					cntdivf1 := 0;
					clk400 <= not clk400;
				end if;
			end if;
		else
			clk400 <= clk50m;
		end if;
	end process divf1;
--
-- sincronitzacio de les entrades dels detectors i del polsador
	sincr : process (clk400)
	begin
		if clk400'event and clk400 = '1' then
			qfci <= fci;
			qfca <= fca;
			qpob <= not npob;
			qcmd <= cmd;
		end if;
	end process sincr;
--
-- filtrat de la indicacio de porta oberta
filtpob : process (clk400)
variable cntfpob : integer range 15 downto 0 := 0;
begin
	if clk400'event and clk400 = '1' then
		if fiinici_qpof = '1' then
			if qpob = qpobf then
				cntfpob := 0;
			else
				cntfpob := (cntfpob+1) mod 16;
					if cntfpob = 0 then
						qpobf <= qpob;
					end if;
			end if;
		else
			qpobf <= qpob;
			if qpob = qpobf then
				cntfpob := (cntfpob+1) mod 16;
				if cntfpob = 0 then
					fiinici_qpof <= '1';
				end if;
			else
				cntfpob := 0;
			end if;
		end if;
	end if;
end process filtpob;
--
-- automat porta
change_state : process (fiinici_qpof,clk400)
	subtype times is integer range 0 to 12000;
   variable counter : times := 0;
	begin
	 if clk400'event and clk400 = '1' then	
			case state is 
				when s0 =>
					if fiinici_qpof = '0' then
						state <= s0;
					else
						if qpobf = '1' then
							state <= s1;
						elsif qpobf = '0' then
							state <= s2;
						end if;
					end if;
				when s1 =>
					if qpobf = '1' and qfca = '1' then
						state <= s4;
						counter := 0;
					elsif qpobf = '0' and qfca = '1' then
						state <= s5;
						counter := 0;
					elsif counter > 1200 then
						state <= s3;
						counter := 0;
					else
						counter :=  counter + 1;
					end if;
				when s2 =>
					if counter > 16 and counter < 1200 and qfci = '1' and qpobf = '0' then
						state <= s5;
						counter := 0;
					elsif counter > 16 and counter < 1200 and qfci = '0' and qpobf = '1' then
						state <= s1;
						counter := 0;
					elsif counter > 1200 then
						state <= s3;
						counter := 0;
					elsif qcmd = '1' then
						state <= s1;
						counter := 0;
					else
						counter := counter + 1;
					end if;
				when s3 =>
					state <= s1;
				when s4 =>
					if qpobf = '0' then
						state <= s2;
					end if;
				when s5 =>
					if counter > 2000 and qpobf = '0' and qfci = '0' then
						state <= s2;
						counter := 0;
					else
						counter := counter + 1;
					end if;
			end case;
	end if;
end process change_state;

porta : process(state)
	begin
		case state is 
			when s0 =>
				enp <= '0';
				pai <= '0';
				pia <= '0';
				nledet <= '0';
			when s1 =>
				pai <= '0';
				pia <= '1';
				enp <= '1';
				nledet <= '0';
			when s2 =>
				pai <= '1';
				pia <= '0';
				enp <= '1';
				nledet <= '0';
			when s3 =>
				enp <= '0';
				pai <= '0';
				pia <= '0';
				nledet <= '1';
			when s4 =>
				enp <= '0';
				pia <= '0';
				pai <= '0';
				nledet <= '0';
			when s5 =>
				enp <= '0';
				pia <= '0';
				pai <= '0';
				nledet <= '0';
		end case;
end process porta;
end funcional;
