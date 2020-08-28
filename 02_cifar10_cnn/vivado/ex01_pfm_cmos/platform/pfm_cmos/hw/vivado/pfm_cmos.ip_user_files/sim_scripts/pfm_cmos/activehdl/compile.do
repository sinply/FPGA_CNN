vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_3_5
vlib activehdl/fifo_generator_v13_1_3
vlib activehdl/lib_pkg_v1_0
vlib activehdl/lib_srl_fifo_v1_0
vlib activehdl/axi_lite_ipif_v3_0
vlib activehdl/axi_master_burst_v2_0
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_10
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_11
vlib activehdl/axi_data_fifo_v2_1_10
vlib activehdl/axi_crossbar_v2_1_12
vlib activehdl/processing_system7_bfm_v2_0_5
vlib activehdl/axi_protocol_converter_v2_1_11

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_3_5 activehdl/blk_mem_gen_v8_3_5
vmap fifo_generator_v13_1_3 activehdl/fifo_generator_v13_1_3
vmap lib_pkg_v1_0 activehdl/lib_pkg_v1_0
vmap lib_srl_fifo_v1_0 activehdl/lib_srl_fifo_v1_0
vmap axi_lite_ipif_v3_0 activehdl/axi_lite_ipif_v3_0
vmap axi_master_burst_v2_0 activehdl/axi_master_burst_v2_0
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 activehdl/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 activehdl/axi_register_slice_v2_1_11
vmap axi_data_fifo_v2_1_10 activehdl/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 activehdl/axi_crossbar_v2_1_12
vmap processing_system7_bfm_v2_0_5 activehdl/processing_system7_bfm_v2_0_5
vmap axi_protocol_converter_v2_1_11 activehdl/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/1188/gpio_mux.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_gpio_mux_0_0/sim/pfm_cmos_gpio_mux_0_0.v" \

vlog -work blk_mem_gen_v8_3_5  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../bd/pfm_cmos/ip/pfm_cmos_bayer2rgb_0_0/ip/ram_2x4096x8_2x1024x32/sim/ram_2x4096x8_2x1024x32.v" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/sync_em2sp.v" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/rst_initial.v" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/mode_det.v" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/bayer2rgb.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_bayer2rgb_0_0/sim/pfm_cmos_bayer2rgb_0_0.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0.v" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/hdl/ip/fifo_16384x32_8192x64/sim/fifo_16384x32_8192x64.v" \

vcom -work lib_pkg_v1_0 -93 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work lib_srl_fifo_v1_0 -93 \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_lite_ipif_v3_0 -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \

vcom -work axi_master_burst_v2_0 -93 \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_demux.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_strb_gen.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rdmux.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_fifo.vhd" \

vcom -work axi_lite_ipif_v3_0 -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \

vcom -work axi_master_burst_v2_0 -93 \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_status_cntl.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wrdata_cntl.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_stbs_set.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_skid_buf.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_skid2mm_buf.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_status_cntl.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rddata_cntl.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_pcc.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_first_stb_offset.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_addr_cntl.vhd" \

vcom -work axi_lite_ipif_v3_0 -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \

vcom -work axi_master_burst_v2_0 -93 \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_llink.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_reset.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_wr_cntlr.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_llink.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_cmd_status.vhd" \

vcom -work axi_lite_ipif_v3_0 -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work axi_master_burst_v2_0 -93 \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/verilog/user_logic_wr.v" \

vcom -work xil_defaultlib -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/vhdl/pldma_rgbin.vhd" \
"../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/sim/pfm_cmos_pldma_rgbin_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/hdl/ipcore/sim/fifo_8192x64_16384x32.v" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/a6fa/hdl/verilog/vga720p.v" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/a6fa/hdl/verilog/user_logic.v" \

vcom -work xil_defaultlib -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/a6fa/hdl/vhdl/pldma_rgbout.vhd" \
"../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/sim/pfm_cmos_pldma_rgbout_0_2.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_200M_4/sim/pfm_cmos_rst_ps7_0_200M_4.vhd" \
"../../../bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_100M_5/sim/pfm_cmos_rst_ps7_0_100M_5.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_10  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../bd/pfm_cmos/ip/pfm_cmos_xbar_0/sim/pfm_cmos_xbar_0.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_xbar_1/sim/pfm_cmos_xbar_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/TMDSEncoder.vhd" \
"../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/SerializerN_1.vhd" \
"../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/DVITransmitter.vhd" \
"../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/hdmi_tx.vhd" \
"../../../bd/pfm_cmos/ip/pfm_cmos_hdmi_tx_0_0/sim/pfm_cmos_hdmi_tx_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../bd/pfm_cmos/ipshared/2e37/xlconcat.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_xlconcat_0_0/sim/pfm_cmos_xlconcat_0_0.v" \

vlog -work processing_system7_bfm_v2_0_5  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../bd/pfm_cmos/ip/pfm_cmos_processing_system7_0_1/sim/pfm_cmos_processing_system7_0_1.v" \

vlog -work axi_protocol_converter_v2_1_11  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/100a" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl" "+incdir+../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl" \
"../../../bd/pfm_cmos/ip/pfm_cmos_auto_pc_0/sim/pfm_cmos_auto_pc_0.v" \
"../../../bd/pfm_cmos/ip/pfm_cmos_auto_pc_1/sim/pfm_cmos_auto_pc_1.v" \
"../../../bd/pfm_cmos/hdl/pfm_cmos.v" \

vlog -work xil_defaultlib "glbl.v"

