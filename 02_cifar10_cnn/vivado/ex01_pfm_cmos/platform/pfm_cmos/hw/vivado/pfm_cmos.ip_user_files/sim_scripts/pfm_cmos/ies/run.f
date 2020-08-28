-makelib ies/xil_defaultlib -sv \
  "D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "D:/ProgramData/Xilinx/SDx/2016.4/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/1188/gpio_mux.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_gpio_mux_0_0/sim/pfm_cmos_gpio_mux_0_0.v" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ip/pfm_cmos_bayer2rgb_0_0/ip/ram_2x4096x8_2x1024x32/sim/ram_2x4096x8_2x1024x32.v" \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/sync_em2sp.v" \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/rst_initial.v" \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/mode_det.v" \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/4890/bayer2rgb.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_bayer2rgb_0_0/sim/pfm_cmos_bayer2rgb_0_0.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/hdl/ip/fifo_16384x32_8192x64/sim/fifo_16384x32_8192x64.v" \
-endlib
-makelib ies/lib_pkg_v1_0 \
  "../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \
-endlib
-makelib ies/lib_srl_fifo_v1_0 \
  "../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
  "../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
  "../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
  "../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \
-endlib
-makelib ies/axi_lite_ipif_v3_0 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
-endlib
-makelib ies/axi_master_burst_v2_0 \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_demux.vhd" \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_strb_gen.vhd" \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rdmux.vhd" \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_fifo.vhd" \
-endlib
-makelib ies/axi_lite_ipif_v3_0 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
-endlib
-makelib ies/axi_master_burst_v2_0 \
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
-endlib
-makelib ies/axi_lite_ipif_v3_0 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
-endlib
-makelib ies/axi_master_burst_v2_0 \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_llink.vhd" \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_reset.vhd" \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_wr_cntlr.vhd" \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_llink.vhd" \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_cmd_status.vhd" \
-endlib
-makelib ies/axi_lite_ipif_v3_0 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/xilinx/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \
-endlib
-makelib ies/axi_master_burst_v2_0 \
  "../../../ipstatic/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/verilog/user_logic_wr.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/f8c8/hdl/vhdl/pldma_rgbin.vhd" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/sim/pfm_cmos_pldma_rgbin_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/hdl/ipcore/sim/fifo_8192x64_16384x32.v" \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/a6fa/hdl/verilog/vga720p.v" \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/a6fa/hdl/verilog/user_logic.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/a6fa/hdl/vhdl/pldma_rgbout.vhd" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/sim/pfm_cmos_pldma_rgbout_0_2.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_200M_4/sim/pfm_cmos_rst_ps7_0_200M_4.vhd" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_100M_5/sim/pfm_cmos_rst_ps7_0_100M_5.vhd" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_12 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ip/pfm_cmos_xbar_0/sim/pfm_cmos_xbar_0.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_xbar_1/sim/pfm_cmos_xbar_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/TMDSEncoder.vhd" \
  "../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/SerializerN_1.vhd" \
  "../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/DVITransmitter.vhd" \
  "../../../bd/pfm_cmos/ipshared/904f/hdmi_out.srcs/sources_1/imports/src/hdmi_tx.vhd" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_hdmi_tx_0_0/sim/pfm_cmos_hdmi_tx_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ipshared/2e37/xlconcat.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_xlconcat_0_0/sim/pfm_cmos_xlconcat_0_0.v" \
-endlib
-makelib ies/processing_system7_bfm_v2_0_5 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ip/pfm_cmos_processing_system7_0_1/sim/pfm_cmos_processing_system7_0_1.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../pfm_cmos.srcs/sources_1/bd/pfm_cmos/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/pfm_cmos/ip/pfm_cmos_auto_pc_0/sim/pfm_cmos_auto_pc_0.v" \
  "../../../bd/pfm_cmos/ip/pfm_cmos_auto_pc_1/sim/pfm_cmos_auto_pc_1.v" \
  "../../../bd/pfm_cmos/hdl/pfm_cmos.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

