// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Fri May 27 14:03:54 2016
// Host        : James running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/SDSoc_pro/snowleo2/2016_01/snowleo2.ipdefs/ip/xilinx.com_user_bayer2rgb_1.0/ip/ram_2x4096x8_2x1024x32/ram_2x4096x8_2x1024x32_stub.v
// Design      : ram_2x4096x8_2x1024x32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_2,Vivado 2016.1" *)
module ram_2x4096x8_2x1024x32(clka, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[12:0],dina[7:0],clkb,enb,addrb[10:0],doutb[31:0]" */;
  input clka;
  input [0:0]wea;
  input [12:0]addra;
  input [7:0]dina;
  input clkb;
  input enb;
  input [10:0]addrb;
  output [31:0]doutb;
endmodule
