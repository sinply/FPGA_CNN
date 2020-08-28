//----------------------------------------------------------------------------
// Filename:          user_logic.v
// Version:           1.00.a
// Description:       User logic module.
// Date:              Tue Dec 24 17:18:55 2013 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    "*_n"
//   clock signals:                         "clk", "clk_div#", "clk_#x"
//   reset signals:                         "rst", "rst_n"
//   generics:                              "C_*"
//   user defined types:                    "*_TYPE"
//   state machine next state:              "*_ns"
//   state machine current state:           "*_cs"
//   combinatorial signals:                 "*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       "*cnt*"
//   clock enable signals:                  "*_ce"
//   internal version of output port:       "*_i"
//   device pins:                           "*_pin"
//   ports:                                 "- Names begin with Uppercase"
//   processes:                             "*_PROCESS"
//   component instantiations:              "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

`uselib lib=unisims_ver
`uselib lib=proc_common_v3_00_a

module user_logic_wr
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
input m_axi_aclk,
output [139:0] u_debug,
input rgb_clk,
input [7:0] rgb_r,rgb_g,rgb_b,
input rgb_lv,
input rgb_fv,
input [10:0] pixel,
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete
input																						Bus2IP_Clk,                     // Bus to IP clock
input																						Bus2IP_Resetn,                  // Bus to IP reset
input      [C_SLV_DWIDTH-1 : 0]           			Bus2IP_Data,                    // Bus to IP data bus
input      [C_SLV_DWIDTH/8-1 : 0]         			Bus2IP_BE,                      // Bus to IP byte enables
input      [C_NUM_REG-1 : 0]              			Bus2IP_RdCE,                    // Bus to IP read chip enable
input      [C_NUM_REG-1 : 0]              			Bus2IP_WrCE,                    // Bus to IP write chip enable
output reg [C_SLV_DWIDTH-1 : 0]           			IP2Bus_Data,                    // IP to Bus data bus
output reg                                			IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
output reg                                			IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
output                                    			IP2Bus_Error,                   // IP to Bus error response
output reg																			ip2bus_mstrd_req,               // IP to Bus master read request
output reg																			ip2bus_mstwr_req,               // IP to Bus master write request
output     [C_MST_AWIDTH-1 : 0]           			ip2bus_mst_addr,                // IP to Bus master read/write address
output reg [(C_MST_NATIVE_DATA_WIDTH/8)-1 : 0] 	ip2bus_mst_be,                  // IP to Bus byte enable
output reg [C_LENGTH_WIDTH-1 : 0]         			ip2bus_mst_length,              // Ip to Bus master transfer length
output reg                                			ip2bus_mst_type,                // Ip to Bus burst assertion control
output reg                                			ip2bus_mst_lock,                // Ip to Bus bus lock
output reg                                			ip2bus_mst_reset,               // Ip to Bus master reset
input                                     			bus2ip_mst_cmdack,              // Bus to Ip master command ack
input                                     			bus2ip_mst_cmplt,               // Bus to Ip master trans complete
input                                     			bus2ip_mst_error,               // Bus to Ip master error
input                                     			bus2ip_mst_rearbitrate,         // Bus to Ip master re-arbitrate for bus ownership
input                                     			bus2ip_mst_cmd_timeout,         // Bus to Ip master command time out
input      [C_MST_NATIVE_DATA_WIDTH-1 : 0] 			bus2ip_mstrd_d,                 // Bus to Ip master read data
input      [(C_MST_NATIVE_DATA_WIDTH)/8-1 : 0]	bus2ip_mstrd_rem,               // Bus to Ip master read data rem
input                                     			bus2ip_mstrd_sof_n,             // Bus to Ip master read start of frame
input                                     			bus2ip_mstrd_eof_n,             // Bus to Ip master read end of frame
input                                     			bus2ip_mstrd_src_rdy_n,         // Bus to Ip master read source ready
input                                     			bus2ip_mstrd_src_dsc_n,         // Bus to Ip master read source dsc
output reg                               				ip2bus_mstrd_dst_rdy_n,         // Ip to Bus master read dest. ready
output reg                                			ip2bus_mstrd_dst_dsc_n,         // Ip to Bus master read dest. dsc
output reg [C_MST_NATIVE_DATA_WIDTH-1 : 0]			ip2bus_mstwr_d,                 // Ip to Bus master write data
output reg [(C_MST_NATIVE_DATA_WIDTH)/8-1 : 0]	ip2bus_mstwr_rem,               // Ip to Bus master write data rem
output reg                                 			ip2bus_mstwr_src_rdy_n,         // Ip to Bus master write source ready
output reg                                 			ip2bus_mstwr_src_dsc_n,         // Ip to Bus master write source dsc
output reg                                			ip2bus_mstwr_sof_n,             // Ip to Bus master write start of frame
output reg                                			ip2bus_mstwr_eof_n,             // Ip to Bus master write end of frame
input                                     			bus2ip_mstwr_dst_rdy_n,         // Bus to Ip master write dest. ready
input                                     			bus2ip_mstwr_dst_dsc_n          // Bus to Ip master write dest. ready
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic
// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter C_MST_NATIVE_DATA_WIDTH        = 64;
parameter C_LENGTH_WIDTH                 = 12;
parameter C_MST_AWIDTH                   = 32;
parameter C_NUM_REG                      = 8;
parameter C_SLV_DWIDTH                   = 32;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

// ------------------------------------------------------
// Example code to read/write user logic slave model s/w accessible registers
// Bus2IP_WrCE/Bus2IP_RdCE   Memory Mapped Register
//"1000_0000"   C_BASEADDR + 0x0
//"0100_0000"   C_BASEADDR + 0x4
//"0010_0000"   C_BASEADDR + 0x8
//"0001_0000"   C_BASEADDR + 0xC
//"0000_1000"   C_BASEADDR + 0x10
//"0000_0100"   C_BASEADDR + 0x14
//"0000_0010"   C_BASEADDR + 0x18
//"0000_0001"   C_BASEADDR + 0x1C
//
// ------------------------------------------------------
assign IP2Bus_Error = 1'b0;
reg [C_SLV_DWIDTH-1 : 0] slv_reg0,slv_reg1,slv_reg2,slv_reg3;
reg [C_SLV_DWIDTH-1 : 0] slv_reg4,slv_reg5,slv_reg6,slv_reg7;
always @(posedge Bus2IP_Clk or negedge Bus2IP_Resetn)
if(!Bus2IP_Resetn)
	begin
		slv_reg0 <= 0;slv_reg1 <= 0;slv_reg2 <= 0;slv_reg3 <= 0;
		slv_reg4 <= 0;slv_reg5 <= 0;slv_reg6 <= 0;slv_reg7 <= 0;
	end
else
	begin
		case (Bus2IP_WrCE[7:0])
			8'b1000_0000 :begin slv_reg0 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			8'b0100_0000 :begin slv_reg1 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			8'b0010_0000 :begin slv_reg2 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			8'b0001_0000 :begin slv_reg3 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			8'b0000_1000 :begin slv_reg4 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			8'b0000_0100 :begin slv_reg5 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			8'b0000_0010 :begin slv_reg6 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			8'b0000_0001 :begin slv_reg7 <= Bus2IP_Data;IP2Bus_WrAck <= 1'b1;end
			default :begin IP2Bus_WrAck <= 1'b0;end
		endcase
	end
//define slave reg
wire dma_start							=slv_reg0[0]		;
wire [31:0] ps_memaddr_base	=slv_reg1				;
wire [1:0]	ps_rd_index			=slv_reg2[1:0]	;
wire [11:0] h_valid					=slv_reg3[11:0]	;
wire [11:0] v_valid					=slv_reg3[27:16];
//read reg
reg [1:0] pl_wr_index;
always @(posedge Bus2IP_Clk or negedge Bus2IP_Resetn)
if(!Bus2IP_Resetn)
	begin
		IP2Bus_Data<=0;
	end
else
	begin
		case (Bus2IP_RdCE[7:0])
			8'b1000_0000 :begin IP2Bus_Data <= slv_reg0;IP2Bus_RdAck<=1'b1;end
			8'b0100_0000 :begin IP2Bus_Data <= slv_reg1;IP2Bus_RdAck<=1'b1;end
			8'b0010_0000 :begin IP2Bus_Data <= {30'd0,pl_wr_index};IP2Bus_RdAck<=1'b1;end
			8'b0001_0000 :begin IP2Bus_Data <= slv_reg3;IP2Bus_RdAck<=1'b1;end
			8'b0000_1000 :begin IP2Bus_Data <= {21'd0,pixel};IP2Bus_RdAck<=1'b1;end
			8'b0000_0100 :begin IP2Bus_Data <= slv_reg5;IP2Bus_RdAck<=1'b1;end
			8'b0000_0010 :begin IP2Bus_Data <= slv_reg6;IP2Bus_RdAck<=1'b1;end
			8'b0000_0001 :begin IP2Bus_Data <= slv_reg7;IP2Bus_RdAck<=1'b1;end
			default :begin IP2Bus_Data <= 32'd0;IP2Bus_RdAck<=1'b0;end
		endcase
	end
//generate dma param
//framebuffer 2048x2048x4byte dma length= h_valid*4/2; dma cyc= v_valid*2
reg [11:0] dma_length;
reg [11:0] dma_cyc;
always @ (posedge m_axi_aclk)
begin
	dma_length<={h_valid[10:0],1'b0};
	dma_cyc<={v_valid[10:0],1'b0}-1'b1;
end
//pldma ip
reg rst=1'b0;
always @ (posedge	m_axi_aclk) rst<=dma_start;
//rgb data to fifo max size is 2048x2048
reg wr_en;
reg [31:0] data_wr;
wire full;
reg [3:0] statec;
always @ (posedge rgb_clk or negedge rst)
if(!rst)
	begin
		wr_en<=1'b0;
		data_wr<=32'd0;
		statec<=4'd0;
	end
else
	begin
		case(statec)
			4'd0:
				begin
					if(!full)
						begin statec<=4'd1;end
					else
						begin statec<=4'd0;end
				end
			4'd1:
				begin
					if(rgb_fv)
						begin statec<=4'd2;end
					else
						begin statec<=4'd1;end
				end
			4'd2:
				begin
					if(!rgb_fv)
						begin statec<=4'd3;end
					else
						begin statec<=4'd2;end
				end
			4'd3:
				begin
					if(rgb_lv)
						begin
							wr_en<=1'b1;
							data_wr<={8'd0,rgb_r,rgb_g,rgb_b};
						end
					else
						begin
							wr_en<=1'b0;
							data_wr<=32'd0;
						end
				end
		endcase
	end
//cmd ctrl
wire [13:0] rd_fifo_cnt;
reg	[31:0] app_wr_addr;
assign ip2bus_mst_addr=app_wr_addr;

reg	[4:0]	state;
reg	write_data_end,write_data_start;
reg [11:0] dma_cyc_cnt;
reg [1:0] pl_wr_index_af;
reg [10:0] pixel_reg;
always @ (posedge	m_axi_aclk	or negedge rst)
if(!rst)
	begin
		ip2bus_mstrd_req<=1'b0;
		ip2bus_mstwr_req<=1'b0;
		ip2bus_mst_length<='d0;
		ip2bus_mst_type<=1'b0;
		ip2bus_mstrd_dst_rdy_n<=1'b1;

		ip2bus_mst_reset<=1'b0;
		ip2bus_mst_lock<=1'b0;//must be decide
		ip2bus_mst_be<='hffff;
		ip2bus_mstrd_dst_dsc_n<=1'b1;//must be always 1
		ip2bus_mstwr_src_dsc_n<=1'b1;//must be always 1

		app_wr_addr<=32'd0;
		state<=5'd0;
		dma_cyc_cnt<=12'd0;
		write_data_start<=1'b0;
		
		pl_wr_index<=2'd0;
		pl_wr_index_af<=2'd0;
		pixel_reg<=11'd0;
	end
else
	begin
		case(state)
			5'd0:
				begin
					app_wr_addr<=ps_memaddr_base+{pl_wr_index,24'h00_0000};
					pixel_reg<=pixel;
					state<=5'd1;
				end
			5'd1:
				begin
					if(rd_fifo_cnt>=dma_length[11:3])
						begin
							state<=5'd2;
						end
					else
						begin end
				end
			5'd2://write
				begin
					ip2bus_mstwr_req<=1'b1;ip2bus_mst_type<=1'b1;ip2bus_mst_length<=dma_length;
					state<=5'd3;write_data_start<=1'b1;
				end
			5'd3:
				begin
					if(bus2ip_mst_cmdack)
						begin
							ip2bus_mstwr_req<=1'b0;ip2bus_mst_type<=1'b0;ip2bus_mst_length<='d0;
							state<=5'd4;write_data_start<=1'b1;
						end
					else
						begin
							state<=5'd3;
						end
				end
			5'd4://wait	write	data end
				begin
					if(write_data_end)
						begin
							state<=5'd5;write_data_start<=1'b0;
						end
					else
						begin
							state<=5'd4;
						end
				end
			5'd5:
				begin
					if(bus2ip_mst_cmplt)
						begin state<=5'd6;end
					else
						begin state<=5'd5;end
				end
			5'd6:
				begin
					if(dma_cyc_cnt!=dma_cyc)
						begin
							dma_cyc_cnt<=dma_cyc_cnt+1'b1;
							app_wr_addr<=app_wr_addr+dma_length;
							state<=5'd1;
						end
					else
						begin
							dma_cyc_cnt<=12'd0;pl_wr_index_af<=pl_wr_index+1'b1;state<=5'd7;
						end
				end
			5'd7:
				begin
					state<=5'd8;
					if(pl_wr_index_af==ps_rd_index)
						begin pl_wr_index<=pl_wr_index;end
					else
						begin
							if(pl_wr_index!=2'd2)
								begin pl_wr_index<=pl_wr_index+1'b1;end
							else
								begin pl_wr_index<=2'd0;end
						end
				end
			5'd8:
				begin
					if(pixel_reg!=pixel)
							begin
								state<=5'd9;
							end
					else
						begin
								state<=5'd0;
						end
				end
		endcase
	end
wire [63:0] data_rd;

reg	[11:0] write_cnt;
reg [11:0] write_len1;
reg [63:0] data_reg;
reg	[4:0]	state_wr;
reg rd_en;
always @ (posedge	m_axi_aclk	or negedge rst)
if(!rst)
	begin
		ip2bus_mstwr_d<='d0;
		ip2bus_mstwr_rem<='d0;
		ip2bus_mstwr_sof_n<=1'b1;
		ip2bus_mstwr_eof_n<=1'b1;
		ip2bus_mstwr_src_rdy_n<=1'b1;

		write_cnt<=12'd0;
		write_len1<=12'd0;
		data_reg<=64'd0;
		state_wr<=5'd0;
		rd_en<=1'b0;
		write_data_end<=1'b0;
	end
else
	begin
		case(state_wr)
			5'd0:
				begin
					if(write_data_start)
						begin state_wr<=5'd1;write_len1<=dma_length[11:3]-2'd1;end
					else
						begin	state_wr<=5'd0;end
				end
			5'd1:
				begin
					if(!bus2ip_mstwr_dst_rdy_n)
						begin
							rd_en<=1'b1;state_wr<=5'd2;
						end
					else
						begin end
				end
			5'd2:
				begin
					if(!bus2ip_mstwr_dst_rdy_n)
						begin
							ip2bus_mstwr_src_rdy_n<=1'b0;ip2bus_mstwr_sof_n<=1'b0;ip2bus_mstwr_d<={data_rd[31:0],data_rd[63:32]};
							rd_en<=1'b1;write_cnt<=write_cnt+1'b1;state_wr<=5'd4;
						end
					else
						begin
							rd_en<=1'b0;data_reg<={data_rd[31:0],data_rd[63:32]};state_wr<=5'd3;
						end
				end
			5'd3:
				begin
					if(!bus2ip_mstwr_dst_rdy_n)
						begin
							ip2bus_mstwr_src_rdy_n<=1'b0;ip2bus_mstwr_sof_n<=1'b0;ip2bus_mstwr_d<=data_reg;
							rd_en<=1'b1;write_cnt<=write_cnt+1'b1;state_wr<=5'd4;
						end
					else
						begin end
				end
			5'd4:
				begin
					if(!bus2ip_mstwr_dst_rdy_n)
						begin
							ip2bus_mstwr_sof_n<=1'b1;ip2bus_mstwr_d<={data_rd[31:0],data_rd[63:32]};
							if(write_cnt!=write_len1)
								begin
									rd_en<=1'b1;write_cnt<=write_cnt+1'b1;state_wr<=5'd4;
								end
							else
								begin
									rd_en<=1'b0;write_cnt<=12'd0;ip2bus_mstwr_eof_n<=1'b0;state_wr<=5'd6;
								end
						end
					else
						begin
							rd_en<=1'b0;data_reg<={data_rd[31:0],data_rd[63:32]};state_wr<=5'd5;
						end
				end
			5'd5:
				begin
					if(!bus2ip_mstwr_dst_rdy_n)
						begin
							ip2bus_mstwr_sof_n<=1'b1;ip2bus_mstwr_d<=data_reg;
							if(write_cnt!=write_len1)
								begin
									rd_en<=1'b1;write_cnt<=write_cnt+1'b1;state_wr<=5'd4;
								end
							else
								begin
									rd_en<=1'b0;write_cnt<=12'd0;ip2bus_mstwr_eof_n<=1'b0;state_wr<=5'd6;
								end
						end
					else
						begin end
				end
			5'd6:
				begin
					if(!bus2ip_mstwr_dst_rdy_n)
						begin
							ip2bus_mstwr_eof_n<=1'b1;ip2bus_mstwr_src_rdy_n<=1'b1;write_data_end<=1'b1;state_wr<=5'd7;
						end
					else
						begin end
				end
			5'd7:
				begin
					if(!write_data_start)
						begin write_data_end<=1'b0;state_wr<=5'd0;end
					else
						begin end
				end
		endcase
	end
//fifo
fifo_16384x32_8192x64 fifo_16384x32_8192x64 (
.rst						(~rst				), // input rst
.wr_clk					(rgb_clk		), // input wr_clk
.rd_clk					(m_axi_aclk	), // input rd_clk
.din						(data_wr		), // input [31 : 0] din
.wr_en					(wr_en			), // input wr_en
.rd_en					(rd_en			), // input rd_en
.dout						(data_rd		), // output [63 : 0] dout
.full						(full				), // output full
.almost_full		(afull			), // output almost_full
.empty					(empty			), // output empty
.rd_data_count	(rd_fifo_cnt)  // output [13 : 0] rd_data_count
);

// for chipscope
assign u_debug = {
dma_start,							//139
pl_wr_index,						//138:137
ps_rd_index,						//136:135
dma_length,							//134:123
dma_cyc,								//122:111
h_valid,								//110:99
v_valid,								//98:87
rd_fifo_cnt,						//86:73
write_data_start,				//72
write_data_end,					//71
dma_cyc_cnt,						//70:59
app_wr_addr,						//58:27
full,										//26
rgb_fv,									//25
rgb_lv,									//24
rgb_r,									//23:16
rgb_g,									//15:8
rgb_b										//7:0
};
endmodule
