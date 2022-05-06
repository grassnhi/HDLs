`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 01:42:58 PM
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb;
    reg [3:0] Bin;
    reg clk;
    reg reset;
    wire [3:0] Bout;

    fsm uut (Bin, clk, reset, Bout);
    
    initial begin
        clk <= 0;
        forever #5 clk = ~clk;
    end
            
    initial begin
        reset = 0;
        Bin = 4'b0000;
        #10 Bin[0] = 1;
            reset = 1;
        #30 Bin[0] = 0;
        #10 Bin[1] = 1;
        #50 Bin[1] = 0;
        #200 Bin[2] = 1;
        #200 Bin[2] = 0;
        #200 Bin[3] = 1;
        #200 Bin[3] = 0;
        #200 Bin[0] = 1;
        #200 Bin[0] = 0;
        #10;
    end
endmodule
