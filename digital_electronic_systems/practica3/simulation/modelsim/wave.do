onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /csporta_tb/nledet
add wave -noupdate /csporta_tb/cmd
add wave -noupdate /csporta_tb/clk50m
add wave -noupdate /csporta_tb/pai
add wave -noupdate /csporta_tb/pia
add wave -noupdate /csporta_tb/fca
add wave -noupdate /csporta_tb/fci
add wave -noupdate /csporta_tb/enp
add wave -noupdate /csporta_tb/npob
add wave -noupdate /csporta_tb/nledet
add wave -noupdate /csporta_tb/cmd
add wave -noupdate /csporta_tb/clk50m
add wave -noupdate /csporta_tb/pai
add wave -noupdate /csporta_tb/pia
add wave -noupdate /csporta_tb/fca
add wave -noupdate /csporta_tb/fci
add wave -noupdate /csporta_tb/enp
add wave -noupdate /csporta_tb/npob
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {67 sec} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits sec
update
WaveRestoreZoom {0 sec} {1000 sec}
