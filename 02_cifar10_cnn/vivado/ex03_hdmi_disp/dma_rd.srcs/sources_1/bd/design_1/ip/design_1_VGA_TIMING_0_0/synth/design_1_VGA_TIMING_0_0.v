// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:VGA_TIMING:1.0
// IP Revision: 2

(* X_CORE_INFO = "VGA_TIMING,Vivado 2016.4_sdx" *)
(* CHECK_LICENSE_TYPE = "design_1_VGA_TIMING_0_0,VGA_TIMING,{}" *)
(* CORE_GENERATION_INFO = "design_1_VGA_TIMING_0_0,VGA_TIMING,{x_ipProduct=Vivado 2016.4_sdx,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=VGA_TIMING,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,H_SYNC_TIME=44,H_BACK_PORCH=148,H_LEFT_BORDER=0,H_ACT_START=192,H_ACTIVE_TIME=1920,H_ACT_END=2112,H_TOTAL_TIME=2200,V_TOTAL_TIME=1125,V_SYNC_TIME=5,V_BACK_PORCH=36,V_TOP_BORDER=0,V_ACT_START=41,V_ACTIVE_TIME=1080,V_ACT_END=1121}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_VGA_TIMING_0_0 (
  sclk,
  rst_n,
  po_vga_r,
  po_vga_g,
  po_vga_b,
  po_de,
  po_v_sync,
  po_h_sync
);

input wire sclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
output wire [7 : 0] po_vga_r;
output wire [7 : 0] po_vga_g;
output wire [7 : 0] po_vga_b;
output wire po_de;
output wire po_v_sync;
output wire po_h_sync;

  VGA_TIMING #(
    .H_SYNC_TIME(44),
    .H_BACK_PORCH(148),
    .H_LEFT_BORDER(0),
    .H_ACT_START(192),
    .H_ACTIVE_TIME(1920),
    .H_ACT_END(2112),
    .H_TOTAL_TIME(2200),
    .V_TOTAL_TIME(1125),
    .V_SYNC_TIME(5),
    .V_BACK_PORCH(36),
    .V_TOP_BORDER(0),
    .V_ACT_START(41),
    .V_ACTIVE_TIME(1080),
    .V_ACT_END(1121)
  ) inst (
    .sclk(sclk),
    .rst_n(rst_n),
    .po_vga_r(po_vga_r),
    .po_vga_g(po_vga_g),
    .po_vga_b(po_vga_b),
    .po_de(po_de),
    .po_v_sync(po_v_sync),
    .po_h_sync(po_h_sync)
  );
endmodule
