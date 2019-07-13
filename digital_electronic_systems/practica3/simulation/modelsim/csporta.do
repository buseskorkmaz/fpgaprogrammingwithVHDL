sim -sdfmax /csporta=csporta_6_1200mv_85c_vhd_slow.sdo csporta

force clk50m 0 {0 ns} -r 20 ns
force clk50m 1 {10 ns} -r 20 ns
force fci 0 0 ns
force fca 1 0 ns
force npob 1 0 ns
force cmd 0 0 ns


run 2 us
for {set i 0} {$i <= 20} {incr i} {
  if {$i%12 == 0} {
    force cmd 0 [expr $i*3] us
    force cmd 1 [expr $i*3+1] us
  } elseif {$i%8 == 0} {
    force fci 0 [expr $i*3] us
    force fci 1 [expr $i*3+1] us 
  } elseif {$i%4 == 0} {
    force fca 0 [expr $i*3] us
    force fca 1 [expr $i*3+1] us 
  }  
  else {
    force enp 0 [expr $i*3] us
    force enp 1 [expr $i*3+1] us 
  }
}
run 59 us
wave zoom full