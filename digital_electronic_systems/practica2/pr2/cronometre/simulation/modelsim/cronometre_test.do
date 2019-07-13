vsim -sdfmax /cronomotre=cronometre_6_1200mv_85c_vhd_slow.sdo metro

force clkin 1 0 ns
force nstart_nstop 1 0 ns
force nactual_nmem 1 0 ns
run 2 us
for {set i 0} {$i <= 20} {incr i} {
  if {$i%8 == 0} {
    force clkin 0 [expr $i*3] us
    force clkin 1 [expr $i*3+1] us
  } elseif {$i%4 == 0} {
    force nstart_nstop 0 [expr $i*3] us
    force nstart_nstop 1 [expr $i*3+1] us 
  } else {
    force nactual_nmem 0 [expr $i*3] us
    force nactual_nmem 1 [expr $i*3+1] us 
  }
}
run 59 us
wave zoom full