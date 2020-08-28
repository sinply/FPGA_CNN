module vga720p(
input resetn,
input clock,
output hsync,
output reg vsync,
output reg enable,
input [14:0] rd_fifo_cnt,
input [11:0] H_PIXELS,
input [11:0] H_FRONTPORCH,
input [11:0] H_SYNCTIME,
input [11:0] H_BACKPORCH,
input [11:0] H_SYNCSTART,
input [11:0] H_SYNCEND,
input [11:0] H_PERIOD,
input [11:0] V_LINES,
input [11:0] V_FRONTPORCH,
input [11:0] V_SYNCTIME,
input [11:0] V_BACKPORCH,
input [11:0] V_SYNCSTART,
input [11:0] V_SYNCEND,
input [11:0] V_PERIOD
);
//Horizontal timing constants
//[11:0] H_PIXELS      ;//= 'd369	,//279	1920  1280
//[11:0] H_FRONTPORCH  ;//= 'd110	,//88		88		110
//[11:0] H_SYNCTIME    ;//= 'd40	,//44		44		40
//[11:0] H_BACKPORCH   ;//= 'd220	,//148	148	  220
//[11:0] H_SYNCSTART   ;//= 'd109	,//87		2008  1390
//[11:0] H_SYNCEND     ;//= 'd149	,//131	2052  1430
//[11:0] H_PERIOD      ;//= 'd1649,//2199	2200  1650
//Vertical timing constants
//[11:0] V_LINES       ;//= 'd29	,//44		1080	720
//[11:0] V_FRONTPORCH  ;//= 'd5		,//4		4		  5
//[11:0] V_SYNCTIME    ;//= 'd5		,//5		5		  5
//[11:0] V_BACKPORCH   ;//= 'd20	,//36		36		20
//[11:0] V_SYNCSTART   ;//= 'd4		,//3		1084	725
//[11:0] V_SYNCEND     ;//= 'd9		,//8		1089	730
//[11:0] V_PERIOD      ;//= 'd749	;//1124	1125	750

reg [11:0] hcnt,vcnt;
reg hsyncint,vsyncint;

//Horizontal counter of pixels
always @ (posedge clock or negedge resetn)
if(!resetn)
    begin hcnt <= 0;vsyncint<=0;end
else
begin
		if(hcnt<H_PERIOD)
			begin
			hcnt <= hcnt + 1'b1;
			if(hcnt==H_PIXELS)
				vsyncint<=1'b0;
			else begin end
		end
		else
			begin
				hcnt <= 0;
				vsyncint<=1'b1;
			end
	end
always @ (posedge vsyncint or negedge resetn)
	if(!resetn)
		begin
			vcnt<=11'd0;
		end
	else
 	begin
			if(vcnt < V_PERIOD)
				vcnt <= vcnt + 1;
			else
   		vcnt<=0;
   end

//Internal horizontal synchronization pulse generation (negative polarity)
always @ (posedge clock or negedge resetn)
if(!resetn)
	hsyncint<= 1'b0;
else if(hcnt >= H_SYNCSTART && hcnt < H_SYNCEND)
	hsyncint <= 1'b1;
else
	begin
		hsyncint<= 1'b0;
	end
//Horizontal synchronization output
assign hsync = hsyncint;

//Vertical synchronization pulse generation (negative polarity)
always @ (posedge vsyncint or negedge resetn)
if(!resetn)
	vsync <=0;
else if(vcnt >= V_SYNCSTART && vcnt < V_SYNCEND)
	vsync <=1;
else
	vsync <=0;
reg vsvalid;
always @ (posedge vsyncint or negedge resetn)
if(!resetn)
	vsvalid <=0;
else if(vcnt >= V_LINES && vcnt < V_PERIOD)
	vsvalid <=1;
else
	vsvalid <=0;
reg de_vaild;
always @ (posedge clock or negedge resetn)
	if(!resetn)
		begin
			de_vaild<=1'b0;
		end
	else
		begin
			if(vsync)
				begin
					if(rd_fifo_cnt>=14'd4096)
						begin
							de_vaild<=1'b1;
						end
					else
						begin
						end
				end
		end
//Enabling of color outputs
//wire enable=(H_PIXELS>=hcnt&&1'b1<=hcnt&&V_LINES>=vcnt&&de_vaild)?1'b1:1'b0;
//Enabling of color outputs
//reg enable;
always @ (posedge clock or negedge resetn)
if(!resetn)
	enable<=0;
else if(hcnt >= H_PIXELS && hcnt < H_PERIOD && vsvalid)
begin
//	if(de_vaild)enable<=1;else enable<=0;   //modified by sinply
    enable <= 1;
end
else
	enable<=0;
endmodule




