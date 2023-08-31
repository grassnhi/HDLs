`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 03:00:17 PM
// Design Name: 
// Module Name: policeSiren_tb
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


module policeSiren_tb;
    reg clk;
    reg rst;
    
    wire led_b;
    wire led_r;

    policeSiren uut (
        led_b, led_r, clk, rst
    );
 
    always
        #5 clk = ~clk;
 
    initial begin
        clk = 0;
        rst = 1;
 
        #10 rst = 0;

        #10;
 
    end
 
endmodule