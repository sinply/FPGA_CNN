# pfm_cmos 7020 video pfm from the zc702_osd_pfm
# zc702_osd_pfm.tcl --
#
# This file uses the SDSoC Tcl Platform API to create the
# zc702_osd hardware platform file
#
# Copyright (c) 2015 Xilinx, Inc.
#
# first you need to run this script to make the SDSoc enviroment

source -notrace D:/ProgramData/Xilinx/SDx/2016.4/scripts/vivado/sdsoc_pfm.tcl
set pfm [sdsoc::create_pfm pfm_cmos.hpfm]
sdsoc::pfm_name        $pfm "xilinx.com" "xd" "pfm_cmos" "1.0"
sdsoc::pfm_description $pfm "cmos in and hdmi out test on pfm_cmos 7020 version"
sdsoc::pfm_clock       $pfm FCLK_CLK0 processing_system7_0 0 false rst_ps7_0_100M
sdsoc::pfm_clock       $pfm FCLK_CLK2 processing_system7_0 2 true  rst_ps7_0_200M
#use fclk3 as the default clock 200Mhz
sdsoc::pfm_axi_port    $pfm M_AXI_GP1 processing_system7_0 M_AXI_GP
sdsoc::pfm_axi_port    $pfm S_AXI_ACP processing_system7_0 S_AXI_ACP
sdsoc::pfm_axi_port    $pfm S_AXI_HP1 processing_system7_0 S_AXI_HP
sdsoc::pfm_axi_port    $pfm S_AXI_HP2 processing_system7_0 S_AXI_HP
sdsoc::pfm_axi_port    $pfm S_AXI_HP3 processing_system7_0 S_AXI_HP
for {set i 0} {$i < 16} {incr i} {
  sdsoc::pfm_irq       $pfm In$i xlconcat_0
}
sdsoc::generate_hw_pfm $pfm
