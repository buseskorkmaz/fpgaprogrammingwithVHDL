LIBRARY ieee  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
ENTITY csporta_tb  IS 
  GENERIC (
    versio  : STRING   := "simulacio" ); 
END ; 
 
ARCHITECTURE csporta_tb_arch OF csporta_tb IS
  SIGNAL nledet   :  STD_LOGIC  ; 
  SIGNAL cmd   :  STD_LOGIC  ; 
  SIGNAL clk50m   :  STD_LOGIC  ; 
  SIGNAL pai   :  STD_LOGIC  ; 
  SIGNAL pia   :  STD_LOGIC  ; 
  SIGNAL fca   :  STD_LOGIC  ; 
  SIGNAL fci   :  STD_LOGIC  ; 
  SIGNAL enp   :  STD_LOGIC  ; 
  SIGNAL npob   :  STD_LOGIC  ; 
  COMPONENT csporta  
    GENERIC ( 
      versio  : STRING  );  
    PORT ( 
      nledet  : out STD_LOGIC ; 
      cmd  : in STD_LOGIC ; 
      clk50m  : in STD_LOGIC ; 
      pai  : out STD_LOGIC ; 
      pia  : out STD_LOGIC ; 
      fca  : in STD_LOGIC ; 
      fci  : in STD_LOGIC ; 
      enp  : out STD_LOGIC ; 
      npob  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : csporta  
    GENERIC MAP ( 
      versio  => versio   )
    PORT MAP ( 
      nledet   => nledet  ,
      cmd   => cmd  ,
      clk50m   => clk50m  ,
      pai   => pai  ,
      pia   => pia  ,
      fca   => fca  ,
      fci   => fci  ,
      enp   => enp  ,
      npob   => npob   ) ; 
clock : process
  begin
    clk50m <= '0';
    wait for 10 ns;
    clk50m <= '1';
    wait for 10 ns;
  end process clock;
sensors : process 
  begin
    fci <=  '1';
    fca <='0';
    cmd <= '0';
    npob <= '1';
    wait for 2 ns;
    for i in 0 to 50 loop
      if i mod 12 = 0 then
        fci <= '0';
        wait for 4 ns;
        fci <= '1';
      elsif i mod 8 = 0 then
        fca <='0';
        wait for 4 ns;
        fca <= '1';
      --elsif i mod 4 = 0 then
        --npob <= '1';
        --wait for 4 sec;
        --npob <= '0';
      else
        cmd <= '0';
        wait for 4 ns;
        cmd <= '1';
      end if;
      wait for 2 ns;
    end loop;
  end process sensors;
END ; 

