vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../ctp_readout2.srcs/sources_1/ip/tc_fifo/sim/tc_fifo.v" \


vlog -work xil_defaultlib \
"glbl.v"

