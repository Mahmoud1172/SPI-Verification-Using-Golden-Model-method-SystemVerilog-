vlib work
vlog SPISLAVE.v slave.vp ram.vp SPI_Wrapper.vp spislavetb.sv +cover -covercells
vsim -voptargs=+acc work.spislavetb -cover
add wave * 
coverage save spislavetb.ucdb -onexit
run -all
#quit -sim
vcover report spislavetb.ucdb -details -annotate -all