vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/processing_system7_bfm_v2_0_5
vlib msim/fifo_generator_v13_1_3
vlib msim/lib_pkg_v1_0
vlib msim/lib_srl_fifo_v1_0
vlib msim/axi_lite_ipif_v3_0
vlib msim/axi_master_burst_v2_0
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/axi_protocol_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap processing_system7_bfm_v2_0_5 msim/processing_system7_bfm_v2_0_5
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap lib_pkg_v1_0 msim/lib_pkg_v1_0
vmap lib_srl_fifo_v1_0 msim/lib_srl_fifo_v1_0
vmap axi_lite_ipif_v3_0 msim/axi_lite_ipif_v3_0
vmap axi_master_burst_v2_0 msim/axi_master_burst_v2_0
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../bd/design_1/ip/design_1_pldma_rgbout_0_0/hdl/ipcore/sim/fifo_8192x64_16384x32.v" \
"../../../bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/sim/ila_0.v" \

vcom -work lib_pkg_v1_0 -64 -93 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work lib_srl_fifo_v1_0 -64 -93 \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_lite_ipif_v3_0 -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \

vcom -work axi_master_burst_v2_0 -64 -93 \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_demux.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_strb_gen.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rdmux.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_fifo.vhd" \
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

vcom -work axi_lite_ipif_v3_0 -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/verilog/vga720p.v" \

vcom -work axi_lite_ipif_v3_0 -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \

vcom -work axi_master_burst_v2_0 -64 -93 \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_llink.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_reset.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_wr_cntlr.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_llink.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_cmd_status.vhd" \
"../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst.vhd" \

vcom -work axi_lite_ipif_v3_0 -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/verilog/user_logic.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/40ab/hdl/vhdl/pldma_rgbout.vhd" \
"../../../bd/design_1/ip/design_1_pldma_rgbout_0_0/sim/design_1_pldma_rgbout_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_200M_0/sim/design_1_rst_ps7_0_200M_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/TMDSEncoder.vhd" \
"../../../bd/design_1/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/SerializerN_1.vhd" \
"../../../bd/design_1/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/DVITransmitter.vhd" \
"../../../bd/design_1/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/hdmi_tx.vhd" \
"../../../bd/design_1/ip/design_1_hdmi_tx_0_0/sim/design_1_hdmi_tx_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_ila_1_0/sim/design_1_ila_1_0.v" \
"../../../bd/design_1/ipshared/e147/xlconstant.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ip/design_1_pldma_rgbout_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/0cab/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/f9cc/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/469d/hdl/verilog" "+incdir+../../../../dma_rd.srcs/sources_1/bd/design_1/ipshared/48e6/hdl/verilog" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib "glbl.v"

