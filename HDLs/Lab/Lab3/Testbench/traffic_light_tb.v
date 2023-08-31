`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 10:21:32 AM
// Design Name: 
// Module Name: traffic_light_tb
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


module traffic_light_tb;
    reg clk;
    reg rst;
    wire [1:0] clk_out1;
    wire [1:0] clk_out2;
    
    traffic_light uut (
        clk, rst, clk_out1, clk_out2
        );
        initial begin
            clk <= 0;
            forever #4 clk = ~clk;
        end
        
        initial begin
            rst = 1;
     
            #15 rst = 0;
            
            #15;
     
        end

endmodule
