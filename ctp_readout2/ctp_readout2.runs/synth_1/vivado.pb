
?
Command: %s
53*	vivadotcl2T
@synth_design -top top_tc_statemachine -part xcku040-ffva1156-2-e2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcku0402default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcku0402default:defaultZ17-349h px? 
?
?The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
719*common2
2018.122default:defaultZ17-1540h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 471.180 ; gain = 96.566
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2'
top_tc_statemachine2default:default2Y
CC:/Users/Simone Ragoni/alice/CtpReadout/hdl/top_tc_statemachine.vhd2default:default2
562default:default8@Z8-638h px? 
l
%s
*synth2T
@	Parameter g_NUM_BITS_ON_GBT_WORD bound to: 76 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bits_to_get bound to: 76 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
packer2default:default2s
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
372default:default2%
input_data_packer2default:default2
packer2default:default2Y
CC:/Users/Simone Ragoni/alice/CtpReadout/hdl/top_tc_statemachine.vhd2default:default2
2062default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
packer2default:default2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
562default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter bits_to_get bound to: 76 - type: integer 
2default:defaulth p
x
? 
?
1Found Dynamic range expression with variable size4378*oasys2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
942default:default8@Z8-6054h px? 
?
1Found Dynamic range expression with variable size4378*oasys2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
1252default:default8@Z8-6054h px? 
?
1Found Dynamic range expression with variable size4378*oasys2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
1272default:default8@Z8-6054h px? 
?
1Found Dynamic range expression with variable size4378*oasys2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
1542default:default8@Z8-6054h px? 
?
1Found Dynamic range expression with variable size4378*oasys2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
1562default:default8@Z8-6054h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
clk_en_i2default:default2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
702default:default8@Z8-614h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
store_count_reg2default:default2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
772default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
write_flag_reg2default:default2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
782default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
new_store_count_reg2default:default2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
842default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
packer2default:default2
12default:default2
12default:default2u
_C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/packer.vhd2default:default2
562default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
tc_fifo2default:default2?
?C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.runs/synth_1/.Xil/Vivado-4768-DESKTOP-T9I20SI/realtime/tc_fifo_stub.vhdl2default:default2
52default:default2 
tc_fifo_inst2default:default2
tc_fifo2default:default2Y
CC:/Users/Simone Ragoni/alice/CtpReadout/hdl/top_tc_statemachine.vhd2default:default2
2292default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
tc_fifo2default:default2?
?C:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.runs/synth_1/.Xil/Vivado-4768-DESKTOP-T9I20SI/realtime/tc_fifo_stub.vhdl2default:default2
232default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
buffer_fifo2default:default2x
dC:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/buffer_fifo.vhd2default:default2
372default:default2$
buffer_from_fifo2default:default2
buffer_fifo2default:default2Y
CC:/Users/Simone Ragoni/alice/CtpReadout/hdl/top_tc_statemachine.vhd2default:default2
2492default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
buffer_fifo2default:default2z
dC:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/buffer_fifo.vhd2default:default2
472default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
s_store_count2default:default2z
dC:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/buffer_fifo.vhd2default:default2
892default:default8@Z8-614h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
store_count_reg2default:default2z
dC:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/buffer_fifo.vhd2default:default2
642default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
buffer_fifo2default:default2
22default:default2
12default:default2z
dC:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/new/buffer_fifo.vhd2default:default2
472default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
tc_statemachine2default:default2S
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
182default:default2$
tc_state_machine2default:default2#
tc_statemachine2default:default2Y
CC:/Users/Simone Ragoni/alice/CtpReadout/hdl/top_tc_statemachine.vhd2default:default2
2802default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2#
tc_statemachine2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
632default:default8@Z8-638h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
trgmaskedpre_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
3992default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
trgmaskedorpre_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
4052default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
TTVALID_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
4182default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

s_trgd_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
4382default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
s_last_ttype_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
9112default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
s_last_orbit_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
9122default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
s_last_bc_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
9132default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
s_hborbit_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
9252default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

s_hbbc_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
9262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
s_last_trgorbit_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
9402default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
s_last_trgbc_reg2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
9412default:default8@Z8-6014h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
	i_ev_size2default:default2#
tc_statemachine2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
922default:default8@Z8-3848h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
tc_statemachine2default:default2
32default:default2
12default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
632default:default8@Z8-256h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	count_reg2default:default2Y
CC:/Users/Simone Ragoni/alice/CtpReadout/hdl/top_tc_statemachine.vhd2default:default2
1962default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
top_tc_statemachine2default:default2
42default:default2
12default:default2Y
CC:/Users/Simone Ragoni/alice/CtpReadout/hdl/top_tc_statemachine.vhd2default:default2
562default:default8@Z8-256h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[118]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[117]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[116]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[115]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[114]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[113]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[112]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[111]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[110]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[109]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[108]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[107]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[106]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[105]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[104]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[103]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[102]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[101]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2

trg_i[100]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[99]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[98]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[97]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[96]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[95]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[94]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[93]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[92]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[91]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[90]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[89]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[88]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[87]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[86]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[85]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[84]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[83]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[82]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[81]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[80]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[79]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[78]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[77]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[76]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[75]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[74]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[73]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[72]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[71]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[70]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[69]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[68]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[67]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[66]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[65]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[64]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[63]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[62]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[61]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[60]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[59]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[58]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[57]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[56]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[55]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[54]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[53]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[52]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[51]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[50]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[49]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[48]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[47]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[46]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[45]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[44]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[43]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[42]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[41]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[40]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[39]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[38]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[37]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[36]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[35]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[34]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[33]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[32]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[31]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[30]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[29]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[28]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[27]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[26]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[25]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[24]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[23]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[22]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[21]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[20]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
tc_statemachine2default:default2
	trg_i[19]2default:defaultZ8-3331h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33312default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 528.168 ; gain = 153.555
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 528.168 ; gain = 153.555
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 528.168 ; gain = 153.555
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
Loading part %s157*device2(
xcku040-ffva1156-2-e2default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
zc:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/ip/tc_fifo/tc_fifo/tc_fifo_in_context.xdc2default:default2"
tc_fifo_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
zc:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.srcs/sources_1/ip/tc_fifo/tc_fifo/tc_fifo_in_context.xdc2default:default2"
tc_fifo_inst	2default:default8Z20-847h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1098.5632default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1098.5632default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:012default:default2 
00:00:00.0062default:default2
1098.5632default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1098.563 ; gain = 723.949
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Loading part: xcku040-ffva1156-2-e
2default:defaulth p
x
? 
B
 Reading net delay rules and data4578*oasysZ8-6742h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1098.563 ; gain = 723.949
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1098.563 ; gain = 723.949
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_o2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_o2default:defaultZ8-5546h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2U
?C:/Users/Simone Ragoni/alice/CtpReadout/hdl/tc_statemachine.vhd2default:default2
8042default:default8@Z8-5818h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
s_cs_reg2default:default2#
tc_statemachine2default:defaultZ8-802h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2(
s_no_idle_btw_events2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
data_rd_fifo2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2)
i_max_idle_btw_events2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
wasEOx2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
i_plcnt2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

u_page_cnt2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
s_ns2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
s_ns2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
s_ns2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
s_ns2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                             0000 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                send_sop |                             0001 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_          send_rdh_word0 |                             0010 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_          send_rdh_word1 |                             0011 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2s
_          send_rdh_word2 |                             0100 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_          send_rdh_word3 |                             0101 |                             0101
2default:defaulth p
x
? 
?
%s
*synth2s
_        wait_for_trigger |                             0110 |                             0110
2default:defaulth p
x
? 
?
%s
*synth2s
_               send_data |                             0111 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2s
_                send_eop |                             1000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 new_rdh |                             1001 |                             1001
2default:defaulth p
x
? 
?
%s
*synth2s
_               send_idle |                             1010 |                             1010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
s_cs_reg2default:default2

sequential2default:default2#
tc_statemachine2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1098.563 ; gain = 723.949
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     11 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 5     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              200 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               83 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               80 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 17    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    200 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     83 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     80 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  28 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 27    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
;
%s
*synth2#
Module packer 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     11 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              200 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               83 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    200 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     83 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
@
%s
*synth2(
Module buffer_fifo 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               83 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
D
%s
*synth2,
Module tc_statemachine 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               80 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 16    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     80 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  28 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 20    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2o
[Part Resources:
DSPs: 1920 (col length:120)
BRAMs: 1200 (col length: RAMB18 120 RAMB36 60)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_o2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2%
tc_state_machine/2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys29
%tc_state_machine/s_no_idle_btw_events2default:defaultZ8-5546h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\tc_state_machine/s_last_word_reg 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default26
"\tc_state_machine/s_send_data_reg 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[6]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[7]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[8]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[9]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.tc_state_machine/i_max_idle_btw_events_reg[10]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[0]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[1]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[2]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[3]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-tc_state_machine/i_max_idle_btw_events_reg[4]2default:default2
FDRE2default:default2A
-tc_state_machine/i_max_idle_btw_events_reg[5]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\tc_state_machine/i_max_idle_btw_events_reg[5] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[0]2default:default2
FDRE2default:default23
tc_state_machine/s_ttype_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[1]2default:default2
FDSE2default:default23
tc_state_machine/s_ttype_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[2]2default:default2
FDSE2default:default23
tc_state_machine/s_ttype_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[3]2default:default2
FDSE2default:default23
tc_state_machine/s_ttype_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[4]2default:default2
FDSE2default:default23
tc_state_machine/s_ttype_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[5]2default:default2
FDSE2default:default23
tc_state_machine/s_ttype_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[6]2default:default2
FDSE2default:default23
tc_state_machine/s_ttype_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[7]2default:default2
FDSE2default:default23
tc_state_machine/s_ttype_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[8]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
tc_state_machine/s_ttype_reg[9]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[10]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[11]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[12]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[13]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[16]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[14]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[15]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[17]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[16]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[24]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[17]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[18]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[18]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[19]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[19]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[20]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[20]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[21]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[21]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[22]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[22]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[23]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[23]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[25]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[24]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[26]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[25]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[27]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[26]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[28]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[27]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[30]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[28]2default:default2
FDRE2default:default24
 tc_state_machine/s_ttype_reg[29]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\tc_state_machine/s_ttype_reg[29] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 tc_state_machine/s_ttype_reg[30]2default:default2
FDSE2default:default24
 tc_state_machine/s_ttype_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default26
"\tc_state_machine/s_ttype_reg[31] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1192.992 ; gain = 818.379
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:39 ; elapsed = 00:00:41 . Memory (MB): peak = 1259.785 ; gain = 885.172
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 1262.020 ; gain = 887.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:41 ; elapsed = 00:00:43 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------------+----------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name         | RTL Name                   | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------------+----------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|top_tc_statemachine | tc_state_machine/EOx_reg   | 5      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top_tc_statemachine | tc_state_machine/HB_reg    | 5      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top_tc_statemachine | tc_state_machine/s_trg_reg | 5      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top_tc_statemachine | tc_state_machine/SOx_reg   | 5      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------------+----------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |tc_fifo       |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |      |Cell           |Count |
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |1     |tc_fifo_bbox_0 |     1|
2default:defaulth px? 
L
%s*synth24
 |2     |BUFG           |     1|
2default:defaulth px? 
L
%s*synth24
 |3     |CARRY8         |    10|
2default:defaulth px? 
L
%s*synth24
 |4     |LUT1           |     8|
2default:defaulth px? 
L
%s*synth24
 |5     |LUT2           |    89|
2default:defaulth px? 
L
%s*synth24
 |6     |LUT3           |   218|
2default:defaulth px? 
L
%s*synth24
 |7     |LUT4           |   484|
2default:defaulth px? 
L
%s*synth24
 |8     |LUT5           |   329|
2default:defaulth px? 
L
%s*synth24
 |9     |LUT6           |  1293|
2default:defaulth px? 
L
%s*synth24
 |10    |SRL16E         |     4|
2default:defaulth px? 
L
%s*synth24
 |11    |FDRE           |   649|
2default:defaulth px? 
L
%s*synth24
 |12    |FDSE           |    12|
2default:defaulth px? 
L
%s*synth24
 |13    |IBUF           |   122|
2default:defaulth px? 
L
%s*synth24
 |14    |OBUF           |    81|
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
? 
b
%s
*synth2J
6|      |Instance            |Module          |Cells |
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
? 
b
%s
*synth2J
6|1     |top                 |                |  3389|
2default:defaulth p
x
? 
b
%s
*synth2J
6|2     |  buffer_from_fifo  |buffer_fifo     |   193|
2default:defaulth p
x
? 
b
%s
*synth2J
6|3     |  input_data_packer |packer          |  2531|
2default:defaulth p
x
? 
b
%s
*synth2J
6|4     |  tc_state_machine  |tc_statemachine |   372|
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 118 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:35 ; elapsed = 00:00:40 . Memory (MB): peak = 1347.207 ; gain = 402.199
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:43 ; elapsed = 00:00:45 . Memory (MB): peak = 1347.207 ; gain = 972.594
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1332default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1353.9342default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
{  A total of 123 instances were transformed.
  BUFG => BUFGCE: 1 instances
  IBUF => IBUF (IBUFCTRL, INBUF): 122 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
952default:default2
1192default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:452default:default2
00:00:482default:default2
1353.9342default:default2
980.3592default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1353.9342default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2z
fC:/Users/Simone Ragoni/alice/CtpReadout/ctp_readout2/ctp_readout2.runs/synth_1/top_tc_statemachine.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
|Executing : report_utilization -file top_tc_statemachine_utilization_synth.rpt -pb top_tc_statemachine_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Mar  3 16:09:04 20212default:defaultZ17-206h px? 


End Record