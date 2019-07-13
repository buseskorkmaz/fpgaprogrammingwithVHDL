onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cronometre/clkin
add wave -noupdate /cronometre/nstart_nstop
add wave -noupdate /cronometre/nactual_nmem
add wave -noupdate /cronometre/nss_desenes_s
add wave -noupdate /cronometre/nss_unitats_s
add wave -noupdate /cronometre/nss_desenes_c
add wave -noupdate /cronometre/nss_unitats_c
add wave -noupdate /cronometre/npd_desenes_s
add wave -noupdate /cronometre/npd_unitats_s
add wave -noupdate /cronometre/npd_desenes_c
add wave -noupdate /cronometre/npd_unitats_c
add wave -noupdate /cronometre/\\clk100~q\\
add wave -noupdate /cronometre/\\estat_control.aturat_actual~q\\
add wave -noupdate /cronometre/unitats_s_mem
add wave -noupdate /cronometre/unitats_s_act
add wave -noupdate /cronometre/unitats_c_mem
add wave -noupdate /cronometre/unitats_c_act
add wave -noupdate /cronometre/desenes_s_mem
add wave -noupdate /cronometre/desenes_s_act
add wave -noupdate /cronometre/desenes_c_mem
add wave -noupdate /cronometre/desenes_c_act
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {60999386 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {64050 ns}
