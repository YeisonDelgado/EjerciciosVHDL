onerror {exit -code 1}
vlib work
vlog -work work MuxComportamental_8_1.vo
vlog -work work OndaMux_2_1Process.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MuxComportamental_8_1_vlg_vec_tst -voptargs="+acc"
vcd file -direction MuxComportamental_8_1.msim.vcd
vcd add -internal MuxComportamental_8_1_vlg_vec_tst/*
vcd add -internal MuxComportamental_8_1_vlg_vec_tst/i1/*
run -all
quit -f
