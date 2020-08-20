
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_Pool_top/AESL_inst_Pool/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set feature_in__feature_out_group [add_wave_group feature_in__feature_out(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $feature_in__feature_out_group]
set wdata_group [add_wave_group "Write Channel" -into $feature_in__feature_out_group]
set ctrl_group [add_wave_group "Handshakes" -into $feature_in__feature_out_group]
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_BID -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_RID -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_WID -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/m_axi_gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group [add_wave_group CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_Pool_top/AESL_inst_Pool/interrupt -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_BRESP -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_BREADY -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_BVALID -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_RRESP -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_RDATA -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_RREADY -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_RVALID -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_ARREADY -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_ARVALID -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_ARADDR -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_WSTRB -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_WDATA -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_WREADY -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_WVALID -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_AWREADY -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_AWVALID -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Pool_top/AESL_inst_Pool/s_axi_AXILiteS_AWADDR -into $CHin__Hin__Win__Kx__Ky__mode__feature_in__feature_out__return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_Pool_top/AESL_inst_Pool/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_Pool_top/AESL_inst_Pool/ap_clk -into $clockgroup
save_wave_config Pool.wcfg
run all
quit

