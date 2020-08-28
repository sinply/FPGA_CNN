module	VGA_TIMING(
	input	wire		sclk,
	input	wire		rst_n,
	output	reg	[7:0]	po_vga_r,
	output	reg	[7:0]	po_vga_g,
	output	reg	[7:0]	po_vga_b,
	output	reg		po_de,
	output	reg		po_v_sync,
	output	reg		po_h_sync
	// input	wire	[31:0]	rgb_pixel,
	// output	wire		rd_fifo_en
);
parameter	H_SYNC_TIME	=44;
parameter	H_BACK_PORCH	=148;
parameter	H_LEFT_BORDER	=0;
parameter	H_ACT_START	=H_SYNC_TIME + H_BACK_PORCH + H_LEFT_BORDER;
parameter	H_ACTIVE_TIME	=1920;
parameter	H_ACT_END	=H_ACT_START + H_ACTIVE_TIME;
parameter	H_TOTAL_TIME	=2200;
parameter	V_TOTAL_TIME	=1125;
parameter	V_SYNC_TIME	=5;
parameter	V_BACK_PORCH	=36;
parameter	V_TOP_BORDER	=0;
parameter	V_ACT_START	=V_SYNC_TIME + V_BACK_PORCH + V_TOP_BORDER;
parameter	V_ACTIVE_TIME	=1080;
parameter	V_ACT_END	=V_ACT_START + V_ACTIVE_TIME;


reg	[11:0]	hor_cnt			= 12'd0;//水平方向像素计数器
reg	[11:0]	ver_cnt 		= 12'd0;//垂直方向行计数器
reg		hor_end;
reg		hor_end_t;
reg		ver_end;
reg		h_sync_start_flag;
reg		h_sync_end_flag;
reg		h_active_flag;
reg	[11:0]	h_act_num;
reg		v_sync_start_flag;
reg		v_sync_end_flag;
reg		v_active_flag;
reg	[11:0]	v_act_num;

always	@(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		hor_cnt <= 'd0;
	else if(hor_end == 1'b1)
		hor_cnt <= 'd0;
	else 
		hor_cnt <= hor_cnt + 1'b1;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		hor_end <= 1'b0;
	else if(hor_cnt == H_TOTAL_TIME-2)
		hor_end <= 1'b1;
	else 
		hor_end <= 1'b0;
always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		hor_end_t<= 1'b0;
	else 
		hor_end_t<= hor_end;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		ver_cnt <= 'd0;
	else if(ver_end == 1'b1) //&& hor_end_t == 1'b1)
		ver_cnt <= 'd0;
	else  if(hor_end == 1'b1)
		ver_cnt <= ver_cnt + 1'b1;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		ver_end <= 1'b0;
	else if(ver_cnt == V_TOTAL_TIME -1 && hor_cnt == H_TOTAL_TIME-2)
		ver_end <= 1'b1;
	else
		ver_end <= 1'b0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		h_sync_start_flag <= 1'b0;
	else if(hor_cnt == 'd0)
		h_sync_start_flag <= 1'b1;
	else
		h_sync_start_flag <= 1'b0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		h_sync_end_flag <= 1'b0;
	else if(hor_cnt == H_SYNC_TIME)
		h_sync_end_flag <= 1'b1;
	else 
		h_sync_end_flag <= 1'b0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		h_active_flag <= 1'b0;
	else if(hor_cnt == H_ACT_START)
		h_active_flag <= 1'b1;
	else if(hor_cnt == H_ACT_END)
		h_active_flag <= 1'b0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		po_h_sync <= 1'b1;
	else if(h_sync_start_flag == 1'b1)
		po_h_sync <= 1'b1;
	else if(h_sync_end_flag == 1'b1)
		po_h_sync <= 1'b0;

always @*
	if(h_active_flag == 1'b1)
		h_act_num <= hor_cnt - H_ACTIVE_TIME;
	else
		h_act_num <='d0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		v_sync_start_flag <= 1'b0;
	else if(ver_cnt == V_TOTAL_TIME -1 && hor_end_t == 1'b1)
		v_sync_start_flag <= 1'b1;
	else if(ver_cnt == 'd0 && hor_cnt == 'd0)
		v_sync_start_flag <= 1'b1;
	else 
		v_sync_start_flag <= 1'b0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		v_sync_end_flag <= 1'b0;
	else if(ver_cnt == V_SYNC_TIME -1 && hor_end_t == 1'b1)
		v_sync_end_flag <= 1'b1;
	else 
		v_sync_end_flag <= 1'b0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		v_active_flag <= 1'b0;
	else if(ver_cnt == V_ACT_START -1 && hor_end == 1'b1)
		v_active_flag <= 1'b1;
	else if(ver_cnt == V_ACT_END -1 && hor_end == 1'b1)
		v_active_flag <= 1'b0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		po_v_sync <= 1'b1;
	else if(v_sync_start_flag == 1'b1)
		po_v_sync <= 1'b1;
	else if(v_sync_end_flag == 1'b1)
		po_v_sync <= 1'b0;

always @*
	if(v_active_flag == 1'b1 && h_active_flag == 1'b1)
		v_act_num <= ver_cnt - V_ACT_START;
	else 
		v_act_num <= 'd0;

always @(posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)
		po_de <=1'b0;
	else if(h_active_flag == 1'b1 && v_active_flag == 1'b1)
		po_de <= 1'b1;
	else
		po_de <= 1'b0;

assign	rd_fifo_en=h_active_flag & v_active_flag ;

always @ (posedge sclk or negedge rst_n)
	if(rst_n == 1'b0)begin
		po_vga_r <= 'd0;
		po_vga_g <= 'd0;
		po_vga_b <= 'd0;
	end
	else if(h_active_flag == 1'b1 && v_active_flag == 1'b1) 
	begin
		if (v_act_num < 300)
		begin
			po_vga_r <= 8'hff;
			po_vga_g <= 8'h00;
			po_vga_b <= 8'h00;
		end
		else if (v_act_num < 700)
		begin
			po_vga_r <= 8'h00;
			po_vga_g <= 8'hff;
			po_vga_b <= 8'h00;
		end
		else 
		begin
			po_vga_r <= 8'h00;
			po_vga_g <= 8'h00;
			po_vga_b <= 8'hff;
		end
	end
	else begin
		po_vga_r <= 'd0;
		po_vga_g <= 'd0;
		po_vga_b <= 'd0;
	end
	
endmodule