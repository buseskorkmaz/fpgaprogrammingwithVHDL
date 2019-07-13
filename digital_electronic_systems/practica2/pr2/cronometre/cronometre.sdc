create_clock -name clkin -period 50Mhz [get_ports clkin]
create_generated_clock -name clk100 -divide_by 2 -source clkin clk100 
derive_clock_uncertainty
