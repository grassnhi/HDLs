`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 01:15:34 PM
// Design Name: 
// Module Name: bina_counter4b_tb
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


module bina_counter4b_tb;
    wire [3:0] counter;
    reg btn;
    reg clk;

    bina_counter4b uut(btn, clk, counter);

    initial begin
        clk <= 0;
        forever #15 clk = ~clk;
    end
            
    initial begin
        btn = 0;
        #20 btn = 1;
        #20 btn = 0;
        #30 btn = 1;
        #30 btn = 0;
        #40 btn = 1;
        #40 btn = 0;
        #10;
    end
endmodule
