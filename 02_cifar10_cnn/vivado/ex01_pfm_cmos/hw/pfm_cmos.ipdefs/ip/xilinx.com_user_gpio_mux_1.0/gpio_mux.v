`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/04/05 17:34:09
// Design Name: 
// Module Name: gpio_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gpio_mux(
    input [3:0] gpio_in,
    output gpio_o0,
    output gpio_o1,
    output gpio_o2,
    output gpio_o3
    );
assign gpio_o0 = gpio_in[0];
assign gpio_o1 = gpio_in[1];
assign gpio_o2 = gpio_in[2];
assign gpio_o3 = gpio_in[3];    
    
endmodule
