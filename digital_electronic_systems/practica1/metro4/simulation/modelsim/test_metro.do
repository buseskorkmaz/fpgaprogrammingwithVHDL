vsim -sdfmax /metro=metro_6_1200mv_85c_vhd_slow.sdo metro
add wave -label clk_hf clk_hf
add wave -label ne_origen ne_origen
add wave -label ne_final ne_final
add wave -label nsensor nsensor
add wave -radix hexadecimal -label divlimit \\divf|divlimit\\
add wave -label clk_lf \\divf|div2~q\\
add wave -label sensorf \\gen-sensorf~q\\
add wave -label sm \\on_som|gen_sm~1_combout\\
add wave -label q1 \\on_som|gen-q|45~0_combout\\
add wave -label q0 \\on_som|gen-q|46~2_combout\\
add wave -expand -label led led
force clk_hf 0 {0 ns} -r 20 ns
force clk_hf 1 {10 ns} -r 20 ns
force ne_origen 1 0 ns
force ne_final 1 0 ns
force nsensor 1 0 ns
run 2 us
for {set i 0} {$i <= 20} {incr i} {
  if {$i%8 == 0} {
    force ne_origen 0 [expr $i*3] us
    force ne_origen 1 [expr $i*3+1] us
  } elseif {$i%4 == 0} {
    force ne_final 0 [expr $i*3] us
    force ne_final 1 [expr $i*3+1] us 
  } else {
    force nsensor 0 [expr $i*3] us
    force nsensor 1 [expr $i*3+1] us 
  }
}
run 59 us
wave zoom full