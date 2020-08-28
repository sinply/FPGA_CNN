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

module user_logic
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
input m_axi_aclk,
output [139:0] u_debug,
input rgbout_clkin,
output reg [7:0] rgbout_r,rgbout_g,rgbout_b,
output reg rgbout_en,
output reg rgbout_hs,
output reg rgbout_vs,
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete
input																Bus2IP_Clk,                     // Bus to IP clock
input																Bus2IP_Resetn,                  // Bus to IP reset
input      [C_SLV_DWIDTH-1 : 0]           			Bus2IP_Data,                    // Bus to IP data bus
input      [C_SLV_DWIDTH/8-1 : 0]         			Bus2IP_BE,                      // Bus to IP byte enables
input      [C_NUM_REG-1 : 0]              			Bus2IP_RdCE,                    // Bus to IP read chip enable
input      [C_NUM_REG-1 : 0]              			Bus2IP_WrCE,                    // Bus to IP write chip enable
output reg [C_SLV_DWIDTH-1 : 0]           			IP2Bus_Data,                    // IP to Bus data bus
output reg                                			IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
output reg                                			IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
output                                    			IP2Bus_Error,                   // IP to Bus error response
output reg														ip2bus_mstrd_req,               // IP to Bus master read request
output reg														ip2bus_mstwr_req,               // IP to Bus master write request
output     [C_MST_AWIDTH-1 : 0]           			ip2bus_mst_addr,                // IP to Bus master read/write address
output reg [(C_MST_NATIVE_DATA_WIDTH/8)-1 : 0] 		ip2bus_mst_be,                  // IP to Bus byte enable
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
input      [(C_MST_NATIVE_DATA_WIDTH)/8-1 : 0]		bus2ip_mstrd_rem,               // Bus to Ip master read data rem
input                                     			bus2ip_mstrd_sof_n,             // Bus to Ip master read start of frame
input                                     			bus2ip_mstrd_eof_n,             // Bus to Ip master read end of frame
input                                     			bus2ip_mstrd_src_rdy_n,         // Bus to Ip master read source ready
input                                     			bus2ip_mstrd_src_dsc_n,         // Bus to Ip master read source dsc
output reg                               				ip2bus_mstrd_dst_rdy_n,         // Ip to Bus master read dest. ready
output reg                                			ip2bus_mstrd_dst_dsc_n,         // Ip to Bus master read dest. dsc
output reg [C_MST_NATIVE_DATA_WIDTH-1 : 0]			ip2bus_mstwr_d,                 // Ip to Bus master write data
output reg [(C_MST_NATIVE_DATA_WIDTH)/8-1 : 0]		ip2bus_mstwr_rem,               // Ip to Bus master write data rem
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
wire dma_start							=slv_reg0[0];
wire [31:0] ps_memaddr_base		=slv_reg1;
wire [1:0]	ps_wr_index				=slv_reg2[1:0];
wire [11:0] h_front					=slv_reg3[11:0];
wire [11:0] h_sync					=slv_reg3[27:16];
wire [11:0] h_back					=slv_reg4[11:0];
wire [11:0] h_valid					=slv_reg4[27:16];
wire [11:0] v_front					=slv_reg5[11:0];
wire [11:0] v_sync					=slv_reg5[27:16];
wire [11:0] v_back					=slv_reg6[11:0];
wire [11:0] v_valid					=slv_reg6[27:16];
//read reg
reg [1:0] pl_rd_index;
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
			8'b0010_0000 :begin IP2Bus_Data <= {30'd0,pl_rd_index};IP2Bus_RdAck<=1'b1;end
			8'b0001_0000 :begin IP2Bus_Data <= slv_reg3;IP2Bus_RdAck<=1'b1;end
			8'b0000_1000 :begin IP2Bus_Data <= slv_reg4;IP2Bus_RdAck<=1'b1;end
			8'b0000_0100 :begin IP2Bus_Data <= slv_reg5;IP2Bus_RdAck<=1'b1;end
			8'b0000_0010 :begin IP2Bus_Data <= slv_reg6;IP2Bus_RdAck<=1'b1;end
			8'b0000_0001 :begin IP2Bus_Data <= slv_reg7;IP2Bus_RdAck<=1'b1;end
			default :begin IP2Bus_Data <= 32'd0;IP2Bus_RdAck<=1'b0;end
		endcase
	end
//generate dma param
//framebuffer h_valid x v_valid x 4byte;dma length= h_valid*4/2; dma cyc= v_valid*2
reg [11:0] dma_length;
reg [11:0] dma_cyc;
reg [11:0] H_PIXELS;
reg [11:0] H_FRONTPORCH;
reg [11:0] H_SYNCTIME;
reg [11:0] H_BACKPORCH;
reg [11:0] H_SYNCSTART;
reg [11:0] H_SYNCEND;
reg [11:0] H_PERIOD;
reg [11:0] V_LINES;
reg [11:0] V_FRONTPORCH;
reg [11:0] V_SYNCTIME;
reg [11:0] V_BACKPORCH;
reg [11:0] V_SYNCSTART;
reg [11:0] V_SYNCEND;
reg [11:0] V_PERIOD;
always @ (posedge m_axi_aclk)
begin
	dma_length<={h_valid[10:0],1'b0};
	dma_cyc<={v_valid[10:0],1'b0}-1'b1;
	H_PIXELS<=h_front+h_sync+h_back-1'b1;
	H_FRONTPORCH<=h_front;
	H_SYNCTIME<=h_sync;
	H_BACKPORCH<=h_back;
	H_SYNCSTART<=h_front-1'b1;
	H_SYNCEND<=h_front+h_sync-1'b1;
	H_PERIOD<=h_front+h_sync+h_back+h_valid-1'b1;

	V_LINES<=v_front+v_sync+v_back-1'b1;
	V_FRONTPORCH<=v_front;
	V_SYNCTIME<=v_sync;
	V_BACKPORCH<=v_back;
	V_SYNCSTART<=v_front-1'b1;
	V_SYNCEND<=v_front+v_sync-1'b1;
	V_PERIOD<=v_front+v_sync+v_back+v_valid-1'b1;
end

//pldma ip
reg rst=1'b0;
always @ (posedge	m_axi_aclk) rst<=dma_start;
//cmd ctrl
wire [13:0] wr_fifo_cnt;
reg	[31:0] app_rd_addr;
reg [31:0] app_rd_addr_br;
assign ip2bus_mst_addr=app_rd_addr;

reg	[4:0]	state;
reg	read_data_end,read_data_start;
reg [13:0] wr_fifo_left;
reg [11:0] dma_cyc_cnt;
reg addr_flag;
reg [1:0] pl_rd_index_af;
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
		ip2bus_mstwr_d<='d0;
		ip2bus_mstwr_rem<='d0;
		ip2bus_mstwr_src_rdy_n<=1'b1;
		ip2bus_mstwr_src_dsc_n<=1'b1;
		ip2bus_mstwr_sof_n<=1'b1;
		ip2bus_mstwr_eof_n<=1'b1;

		app_rd_addr<=32'd0;
		app_rd_addr_br<=32'd0;
		state<=5'd0;
		dma_cyc_cnt<=12'd0;
		read_data_start<=1'b0;
		wr_fifo_left<=14'd0;
		pl_rd_index<=2'd0;
		pl_rd_index_af<=2'd0;
		addr_flag<=1'b0;
	end
else
	begin
		case(state)
			5'd0:
				begin
					app_rd_addr<=ps_memaddr_base;
					state<=5'd1;
				end
			5'd1:
				begin
					wr_fifo_left<=14'd8192-wr_fifo_cnt;
					if(wr_fifo_left>=dma_length[11:3])
						begin
							state<=5'd2;
						end
					else
						begin
							state<=5'd1;
						end
				end
			5'd2://read
				begin
					ip2bus_mstrd_req<=1'b1;ip2bus_mst_type<=1'b1;ip2bus_mst_length<=dma_length;ip2bus_mstrd_dst_rdy_n<=1'b0;
					state<=5'd3;read_data_start<=1'b1;
				end
			5'd3:
				begin
					if(bus2ip_mst_cmdack)
						begin
							ip2bus_mstrd_req<=1'b0;ip2bus_mst_type<=1'b0;ip2bus_mst_length<='d0;ip2bus_mstrd_dst_rdy_n<=1'b0;
							state<=5'd4;read_data_start<=1'b1;
						end
					else
						begin
							state<=5'd3;
						end
				end
			5'd4://wait	read	data end
				begin
					if(read_data_end)
						begin
							ip2bus_mstrd_dst_rdy_n<=1'b1;state<=5'd5;read_data_start<=1'b0;
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
					wr_fifo_left<=14'd8192-wr_fifo_cnt;
					if(dma_cyc_cnt!=dma_cyc)
						begin
							dma_cyc_cnt<=dma_cyc_cnt+1'b1;
							app_rd_addr<=app_rd_addr+dma_length;
							state<=5'd1;
						end
					else
						begin
							dma_cyc_cnt<=12'd0;state<=5'd0;
						end
				end
			5'd7:
				begin
					dma_cyc_cnt<=12'd0;state<=5'd0;
				end
		endcase
	end
//data rd
wire [63:0] data_wr={bus2ip_mstrd_d[31:0],bus2ip_mstrd_d[63:32]};
wire wr_en=~bus2ip_mstrd_src_rdy_n;
reg	[11:0] read_cnt;
reg [11:0] read_len1;
reg	[4:0]	state_rd;
always @ (posedge	m_axi_aclk	or negedge rst)
if(!rst)
	begin
		read_cnt<=12'd0;
		read_len1<=12'd0;
		state_rd<=5'd0;
		read_data_end<=1'b0;
	end
else
	begin
		case(state_rd)
			5'd0:
				begin
					if(read_data_start)
						begin state_rd<=5'd1;read_len1<=dma_length[11:3]-2'd1;end
					else
						begin	state_rd<=5'd0;end
				end
			5'd1:
				begin
					if(!bus2ip_mstrd_src_rdy_n)
						begin
							if(read_cnt!=read_len1)
								begin
									read_cnt<=read_cnt+1'b1;state_rd<=5'd1;
								end
							else
								begin
									read_cnt<=12'd0;state_rd<=5'd2;read_data_end<=1'b1;
								end
						end
					else
						begin end
				end
			5'd2:
				begin
					if(!read_data_start)
						begin read_data_end<=1'b0;state_rd<=5'd0;end
					else state_rd<=5'd2;
				end
		endcase
	end
//vga timming
wire [14:0] rd_fifo_cnt;
vga720p vga720p(
.resetn				(rst					),
.clock				(rgbout_clkin			),
.hsync				(hsync				),
.vsync				(vsync				),
.enable				(enable				),
.rd_fifo_cnt	(rd_fifo_cnt	),
.H_PIXELS			(H_PIXELS			),
.H_FRONTPORCH	(H_FRONTPORCH	),
.H_SYNCTIME		(H_SYNCTIME		),
.H_BACKPORCH	(H_BACKPORCH	),
.H_SYNCSTART	(H_SYNCSTART	),
.H_SYNCEND		(H_SYNCEND		),
.H_PERIOD			(H_PERIOD			),
.V_LINES			(V_LINES			),
.V_FRONTPORCH	(V_FRONTPORCH	),
.V_SYNCTIME		(V_SYNCTIME		),
.V_BACKPORCH	(V_BACKPORCH	),
.V_SYNCSTART	(V_SYNCSTART	),
.V_SYNCEND		(V_SYNCEND		),
.V_PERIOD			(V_PERIOD		  )
);
//fifo
wire [31:0] data_rd;
wire rd_en=enable;
fifo_8192x64_16384x32 fifo_8192x64_16384x32 (
.rst						(~rst				), // input rst
.wr_clk					(m_axi_aclk	), // input wr_clk
.rd_clk					(rgbout_clkin		), // input rd_clk
.din						(data_wr		), // input [63 : 0] din
.wr_en					(wr_en			), // input wr_en
.rd_en					(rd_en			), // input rd_en
.dout						(data_rd		), // output [31 : 0] dout
.full						(full				), // output full
.empty					(empty			), // output empty
.almost_empty		(aempty			), // output almost_empty
.rd_data_count	(rd_fifo_cnt), // output [14 : 0] rd_data_count
.wr_data_count	(wr_fifo_cnt) // output [13 : 0] wr_data_count
);
always @ (posedge rgbout_clkin or negedge rst)
if(!rst)
	begin
		rgbout_r<=8'd0;rgbout_g<=8'd0;rgbout_b<=8'd0;
		rgbout_en<=1'b0;rgbout_hs<=1'b0;rgbout_vs<=1'b0;
	end
else
	begin
		rgbout_hs<=hsync;rgbout_vs<=vsync;
		if(enable)
			begin
				rgbout_en<=1'b1;rgbout_r<=data_rd[23:16];rgbout_g<=data_rd[15:8];rgbout_b<=data_rd[7:0];
			end
		else
			begin
				rgbout_en<=1'b0;rgbout_r<=8'd0;rgbout_g<=8'd0;rgbout_b<=8'd0;
			end
	end
// for chipscope
assign u_debug = {
dma_start,							//139
ps_wr_index,						//138:137
pl_rd_index,						//136:135
dma_length,							//134:123
dma_cyc,								//122:111
H_PERIOD,								//110:99
V_PERIOD,								//98:87
wr_fifo_cnt,						//86:73
read_data_start,				//72
read_data_end,					//71
dma_cyc_cnt,						//70:59
app_rd_addr,						//58:27
addr_flag,							//26
empty,									//25
rgbout_en,									//24
rgbout_r,									//23:16
rgbout_g,									//15:8
rgbout_b										//7:0
};
endmodule
