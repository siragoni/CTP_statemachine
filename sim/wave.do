onerror {resume}

quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench avalon}
add wave -noupdate -radix hexadecimal /tb/s_clock_250
add wave -noupdate -radix hexadecimal /tb/CLK
add wave -noupdate -radix hexadecimal /tb/ADDR
add wave -noupdate -radix hexadecimal /tb/WR
add wave -noupdate -radix hexadecimal /tb/WRDATA


add wave -noupdate -divider {DDG avalon}
add wave -noupdate -radix hexadecimal /tb/DUT/MMS_ADDR
add wave -noupdate -radix hexadecimal /tb/DUT/MMS_WR
add wave -noupdate -radix hexadecimal /tb/DUT/MMS_WRDATA
add wave -noupdate -radix hexadecimal /tb/DUT/TTC_RXRST
add wave -noupdate -radix hexadecimal /tb/DUT/TTC_RXVALID


add wave -noupdate -divider {Configuration registers}
add wave -noupdate -radix hexadecimal /tb/DUT/s_cfg
add wave -noupdate -radix hexadecimal /tb/DUT/s_cfg2
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/trg_mask_i


add wave -noupdate -divider {Packet generator}
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/clk_i
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/clk_en_i
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/rst_i
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_bursten
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_pause
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/run

add wave -noupdate -divider {Events}
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_gbt_word_limit
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_rnd_in_range
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_wordsize
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_gbt_word
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_ev_size
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/u_pat_cnt


add wave -noupdate -divider {Trigger bits}
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_trgd
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/TTVALID
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_ttype
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/SOx
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/wasSOx
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/EOx
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/wasEOx
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/eox_pkt_sent
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/HB
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/wasHB
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_trg

add wave -noupdate -divider {State machine}
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_cs
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_payload_not_sent


add wave -noupdate -divider {Idles}
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_idle_gbt_word
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_max_idle_btw_events


add wave -noupdate -divider {RDH}
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_hborbit
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/s_hbbc
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/hbf_closed


add wave -noupdate -divider {Counters}
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/i_plcnt
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/u_page_cnt
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/u_ev_cnt
add wave -noupdate -radix decimal /tb/DUT/cmp_cont_sap/u_burst_cnt


add wave -noupdate -divider {Packet generator output}
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/d_o
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/w_o
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/dv_o
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_sap/ev_cnt_o


add wave -noupdate -divider {Continuous}
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/clk_i
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/clk_en_i
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/rst_i
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/s_rst
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/frame_end
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/frame_end_old
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/u_pat_cnt
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/tpc_emu_i
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/s_tpc_sync
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/s_tpc_data
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/d_o
add wave -noupdate -radix hexadecimal /tb/DUT/cmp_cont_data_stream/w_o


add wave -noupdate -divider {DDG output}
add wave -noupdate -radix hexadecimal /tb/DUT/gbt_tx_bus_o.data_valid
add wave -noupdate -radix hexadecimal /tb/DUT/gbt_tx_bus_o.data


TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {110000 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 233
configure wave -valuecolwidth 285
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {110000 ns}
