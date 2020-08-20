set designtopgroup "Design Top Signals"
add wave -group $designtopgroup
set clockgroup "Clock"
add wave -group $designtopgroup -group $clockgroup
add wave -group $designtopgroup -group $clockgroup /apatb_Conv_top/AESL_inst_Conv/ap_clk
set resetgroup "Reset"
add wave -group $designtopgroup -group $resetgroup
add wave -group $designtopgroup -group $resetgroup /apatb_Conv_top/AESL_inst_Conv/ap_rst_n
set cinoutgroup "C InOut"
add wave -group $designtopgroup -group $cinoutgroup
set CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return(axi_slave)
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_AWADDR
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_AWVALID
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_AWREADY
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WVALID
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WREADY
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WDATA
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WSTRB
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_ARADDR
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_ARVALID
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_ARREADY
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RVALID
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RREADY
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RDATA
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RRESP
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_BVALID
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_BREADY
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_BRESP
add wave -group $designtopgroup -group $cinoutgroup -group $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/interrupt
set feature_in__W__bias__feature_out_group feature_in__W__bias__feature_out(axi_master)
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group
set ctrl_group "Handshakes"
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group
set wdata_group "Write Channel"
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group
set rdata_group "Read Channel"
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWVALID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWREADY
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWADDR
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWLEN
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWSIZE
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWBURST
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWLOCK
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWCACHE
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWPROT
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWQOS
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWREGION
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWUSER
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WVALID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WREADY
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WDATA
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WSTRB
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WLAST
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WUSER
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARVALID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARREADY
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARADDR
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARLEN
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARSIZE
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARBURST
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARLOCK
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARCACHE
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARPROT
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARQOS
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARREGION
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARUSER
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RVALID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RREADY
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RDATA
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RLAST
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RUSER
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $rdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RRESP
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BVALID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $ctrl_group -color #ffff00 -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BREADY
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BRESP
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BID
add wave -group $designtopgroup -group $cinoutgroup -group $feature_in__W__bias__feature_out_group -group $wdata_group -radix hex /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BUSER
