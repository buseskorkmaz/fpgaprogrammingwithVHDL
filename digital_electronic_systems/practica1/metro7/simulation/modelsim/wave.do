onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk_lf /metro_tb/DUT/\\divf|div2~q\\
add wave -noupdate -label divlimit /metro_tb/DUT/\\divf|divlimit\\
add wave -noupdate -label sensorf /metro_tb/DUT/\\gen-sensorf~q\\
add wave -noupdate -label q1 /metro_tb/DUT/\\on_som|gen-q|45~0_combout\\
add wave -noupdate -label q0 /metro_tb/DUT/\\on_som|gen-q|46~2_combout\\
add wave -noupdate -label {nsm} /metro_tb/DUT/\\on_som|gen_sm~1_combout\\
add wave -noupdate -label nsensor /metro_tb/nsensor
add wave -noupdate -label {ne_final} /metro_tb/ne_final
add wave -noupdate -label led -radix hexadecimal -expand /metro_tb/led
add wave -noupdate -label ne_origen /metro_tb/ne_origen
add wave -noupdate -label clk_hf /metro_tb/clk_hf
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 129
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {64050 ns}
