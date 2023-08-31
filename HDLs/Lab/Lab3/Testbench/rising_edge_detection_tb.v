`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:44:57 PM
// Design Name: 
// Module Name: rising_edge_detection_tb
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


module rising_edge_detection_tb;
    wire out;
    reg in;
    reg clk;
    
    rising_edge_detection uut(out, in, clk);
    
    initial begin
        clk <= 0;
        forever #5 clk = ~clk;
    end
            
    initial begin
         in = 0;
         #10 in = 1;
         #10 in = 0;
         #10 in = 1;
         #10;
    end
    
endmodule
