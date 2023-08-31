`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2022 08:42:42 PM
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();
reg clk_in,switch,reset;
reg[3:0] data_in;
wire [3:0] data_out;
wire [1:0]rgb_lebs;

fifo uut(clk_in,clk_new,switch,reset,data_in,data_out,rgb_lebs);

initial begin
    clk_in <= 0;
    forever #4 clk_in <= !clk_in; 
end

initial begin
    switch = 0;
    reset = 0;
    data_in = 4'b0001;
    #500_000_004 data_in = 4'b0010;
    #1_000_000_000 data_in = 4'b0011;
    #1_000_000_000 data_in = 4'b0100;
    #1_000_000_000 data_in = 4'b0101;
    #1_000_000_000 switch = 1;
    
end
endmodule
