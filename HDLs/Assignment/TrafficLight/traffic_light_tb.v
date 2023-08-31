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
    reg sw;
    wire [1:0] out1;
    wire [1:0] out2;
    
    traffic_light uut (
        clk, rst, sw, out1, out2
        );
        initial begin
            clk <= 0;
            forever #0.5 clk = ~clk;
        end
        
        initial begin
            rst = 1;
            sw = 0;
     
            #10 rst = 0;
            
            #1250 sw = 1;

            #1250;
     
        end

endmodule
