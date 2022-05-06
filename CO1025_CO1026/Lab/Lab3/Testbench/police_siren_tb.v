`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 01:05:01 PM
// Design Name: 
// Module Name: police_siren_tb
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


module police_siren_tb;
    reg clk;
    reg rst;
    wire clk_out1;
    wire clk_out2;
    
    police_siren uut (
        clk, rst, clk_out1, clk_out2
        );
        initial begin
            clk <= 0;
            forever #5 clk = ~clk;
        end
        
        initial begin
            rst = 1;
     
            #10 rst = 0;
            
            #10;
     
        end
     
endmodule
