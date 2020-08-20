vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/processing_system7_bfm_v2_0_5
vlib msim/xbip_utils_v3_0_7
vlib msim/axi_utils_v2_0_3
vlib msim/xbip_pipe_v3_0_3
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_dsp48_addsub_v3_0_3
vlib msim/xbip_dsp48_multadd_v3_0_3
vlib msim/xbip_bram18k_v3_0_3
vlib msim/mult_gen_v12_0_12
vlib msim/floating_point_v7_1_3
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_crossbar_v2_1_12
vlib msim/axi_protocol_converter_v2_1_11
vlib msim/axi_clock_converter_v2_1_10
vlib msim/blk_mem_gen_v8_3_5
vlib msim/axi_dwidth_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap processing_system7_bfm_v2_0_5 msim/processing_system7_bfm_v2_0_5
vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap axi_utils_v2_0_3 msim/axi_utils_v2_0_3
vmap xbip_pipe_v3_0_3 msim/xbip_pipe_v3_0_3
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_3 msim/xbip_dsp48_addsub_v3_0_3
vmap xbip_dsp48_multadd_v3_0_3 msim/xbip_dsp48_multadd_v3_0_3
vmap xbip_bram18k_v3_0_3 msim/xbip_bram18k_v3_0_3
vmap mult_gen_v12_0_12 msim/mult_gen_v12_0_12
vmap floating_point_v7_1_3 msim/floating_point_v7_1_3
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11
vmap axi_clock_converter_v2_1_10 msim/axi_clock_converter_v2_1_10
vmap blk_mem_gen_v8_3_5 msim/blk_mem_gen_v8_3_5
vmap axi_dwidth_converter_v2_1_11 msim/axi_dwidth_converter_v2_1_11

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6fc3/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_3 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/43f5/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_3 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/779d/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_3 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/403d/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_12 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/f0ab/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_3 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/ad02/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_AXILiteS_s_axi.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_fadd_32ns_32bkb.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_fcmp_32ns_32dEe.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_fmul_32ns_32cud.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_gmem_m_axi.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_mul_32s_16nsfYi.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_mul_mul_16nsg8j.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_mul_mul_16nshbi.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/verilog/Conv_sdiv_19s_9nseOg.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/ip/Conv_ap_fadd_3_full_dsp_32.vhd" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/ip/Conv_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6b7b/hdl/ip/Conv_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_Conv_0_0/sim/design_1_Conv_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_AXILiteS_s_axi.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_fadd_32ns_32bkb.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_fcmp_32ns_32eOg.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_fdiv_32ns_32cud.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_gmem_m_axi.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_mac_muladd_1jbC.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_mul_32s_16nshbi.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_mul_32s_16s_g8j.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_mul_mul_16nsibs.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_sitofp_32ns_dEe.v" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/verilog/Pool_udiv_16ns_8nfYi.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/ip/Pool_ap_fadd_3_full_dsp_32.vhd" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/ip/Pool_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/ip/Pool_ap_fdiv_14_no_dsp_32.vhd" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/e5a1/hdl/ip/Pool_ap_sitofp_4_no_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_Pool_0_0/sim/design_1_Pool_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_clock_converter_v2_1_10 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_3_5 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work axi_dwidth_converter_v2_1_11 -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../design.srcs/sources_1/bd/design_1/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib "glbl.v"

