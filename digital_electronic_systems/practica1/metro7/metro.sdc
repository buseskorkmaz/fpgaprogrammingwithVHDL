create_clock -name clk_hf -period 20ns [get_ports clk_hf]
create_generated_clock -name clk_lf -divide_by 30 -source clk_hf divf:divf|div2
create_generated_clock -name sensorf -divide_by 2 -source divf:divf|div2 gen-sensorf
derive_clock_uncertainty
