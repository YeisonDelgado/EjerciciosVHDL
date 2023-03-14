onerror {exit -code 1}
vlib work
vlog -work work Decodificador_4_2.vo
vlog -work work Codificador_Wave.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Decodificador_4_2_vlg_vec_tst -voptargs="+acc"
vcd file -direction Decodificador_4_2.msim.vcd
vcd add -internal Decodificador_4_2_vlg_vec_tst/*
vcd add -internal Decodificador_4_2_vlg_vec_tst/i1/*
run -all
quit -f
