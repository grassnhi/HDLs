`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 02:59:45 PM
// Design Name: 
// Module Name: policeSiren
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


module policeSiren(
    output led_b, led_r, input clk, rst
    );
    
    wire [26:0] din;
    wire [26:0] clkdiv;
    
    dff DFF0(din[0], clk, rst, clkdiv[0]);
    
    genvar i;
    generate
        for(i = 1; i < 27; i = i + 1) begin : dff_gen_label
            dff DFF(din[i], clkdiv[i-1], rst, clkdiv[i]);
        end
    endgenerate
    
    assign din = ~clkdiv;
    assign led_b = clkdiv[26];
    assign led_r = ~clkdiv[26];
endmodule
