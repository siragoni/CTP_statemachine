######################################################################
#
# File name : TC_statemachine_tb_compile.do
# Created on: Wed Mar 03 16:12:53 +0100 2021
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
C:\\questasim64_10.6c\\win64\\vlib questa_lib/work
C:\\questasim64_10.6c\\win64\\vlib questa_lib/msim

C:\\questasim64_10.6c\\win64\\vlib questa_lib/msim/xil_defaultlib

C:\\questasim64_10.6c\\win64\\vmap xil_defaultlib questa_lib/msim/xil_defaultlib

C:\\questasim64_10.6c\\win64\\vlog -64 -incr -work xil_defaultlib  \
"../../../../ctp_readout2.srcs/sources_1/ip/tc_fifo/sim/tc_fifo.v" \

C:\\questasim64_10.6c\\win64\\vcom -64 -93 -work xil_defaultlib  \
"../../../../ctp_readout2.srcs/sources_1/new/buffer_fifo.vhd" \
"../../../../ctp_readout2.srcs/sources_1/new/packer.vhd" \
"../../../../../hdl/tc_statemachine.vhd" \
"../../../../../hdl/top_tc_statemachine.vhd" \
"../../../../ctp_readout2.srcs/sim_1/new/TC_statemachine_tb.vhd" \

# compile glbl module
C:\\questasim64_10.6c\\win64\\vlog -work xil_defaultlib "glbl.v"

quit -force

