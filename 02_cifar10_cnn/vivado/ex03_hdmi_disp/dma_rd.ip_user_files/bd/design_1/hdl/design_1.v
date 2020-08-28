//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
//Date        : Thu Aug 27 16:32:27 2020
//Host        : LAPTOP-7SLKK6BV running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=2,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    HDMI_CLK_N,
    HDMI_CLK_P,
    HDMI_D0_N,
    HDMI_D0_P,
    HDMI_D1_N,
    HDMI_D1_P,
    HDMI_D2_N,
    HDMI_D2_P,
    hdmi_out_en);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output HDMI_CLK_N;
  output HDMI_CLK_P;
  output HDMI_D0_N;
  output HDMI_D0_P;
  output HDMI_D1_N;
  output HDMI_D1_P;
  output HDMI_D2_N;
  output HDMI_D2_P;
  output [0:0]hdmi_out_en;

  wire VGA_TIMING_0_po_de;
  wire VGA_TIMING_0_po_h_sync;
  wire VGA_TIMING_0_po_v_sync;
  wire [7:0]VGA_TIMING_0_po_vga_b;
  wire [7:0]VGA_TIMING_0_po_vga_g;
  wire [7:0]VGA_TIMING_0_po_vga_r;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire hdmi_tx_0_HDMI_CLK_N;
  wire hdmi_tx_0_HDMI_CLK_P;
  wire hdmi_tx_0_HDMI_D0_N;
  wire hdmi_tx_0_HDMI_D0_P;
  wire hdmi_tx_0_HDMI_D1_N;
  wire hdmi_tx_0_HDMI_D1_P;
  wire hdmi_tx_0_HDMI_D2_N;
  wire hdmi_tx_0_HDMI_D2_P;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign HDMI_CLK_N = hdmi_tx_0_HDMI_CLK_N;
  assign HDMI_CLK_P = hdmi_tx_0_HDMI_CLK_P;
  assign HDMI_D0_N = hdmi_tx_0_HDMI_D0_N;
  assign HDMI_D0_P = hdmi_tx_0_HDMI_D0_P;
  assign HDMI_D1_N = hdmi_tx_0_HDMI_D1_N;
  assign HDMI_D1_P = hdmi_tx_0_HDMI_D1_P;
  assign HDMI_D2_N = hdmi_tx_0_HDMI_D2_N;
  assign HDMI_D2_P = hdmi_tx_0_HDMI_D2_P;
  assign hdmi_out_en[0] = xlconstant_0_dout;
  design_1_VGA_TIMING_0_0 VGA_TIMING_0
       (.po_de(VGA_TIMING_0_po_de),
        .po_h_sync(VGA_TIMING_0_po_h_sync),
        .po_v_sync(VGA_TIMING_0_po_v_sync),
        .po_vga_b(VGA_TIMING_0_po_vga_b),
        .po_vga_g(VGA_TIMING_0_po_vga_g),
        .po_vga_r(VGA_TIMING_0_po_vga_r),
        .rst_n(processing_system7_0_FCLK_RESET0_N),
        .sclk(clk_wiz_0_clk_out1));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked));
  design_1_hdmi_tx_0_0 hdmi_tx_0
       (.HDMI_CLK_N(hdmi_tx_0_HDMI_CLK_N),
        .HDMI_CLK_P(hdmi_tx_0_HDMI_CLK_P),
        .HDMI_D0_N(hdmi_tx_0_HDMI_D0_N),
        .HDMI_D0_P(hdmi_tx_0_HDMI_D0_P),
        .HDMI_D1_N(hdmi_tx_0_HDMI_D1_N),
        .HDMI_D1_P(hdmi_tx_0_HDMI_D1_P),
        .HDMI_D2_N(hdmi_tx_0_HDMI_D2_N),
        .HDMI_D2_P(hdmi_tx_0_HDMI_D2_P),
        .LOCKED_I(clk_wiz_0_locked),
        .PXLCLK_5X_I(clk_wiz_0_clk_out2),
        .PXLCLK_I(clk_wiz_0_clk_out1),
        .RST_I(xlconstant_1_dout),
        .VGA_B(VGA_TIMING_0_po_vga_b),
        .VGA_DE(VGA_TIMING_0_po_de),
        .VGA_G(VGA_TIMING_0_po_vga_g),
        .VGA_HS(VGA_TIMING_0_po_h_sync),
        .VGA_R(VGA_TIMING_0_po_vga_r),
        .VGA_VS(VGA_TIMING_0_po_v_sync));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
