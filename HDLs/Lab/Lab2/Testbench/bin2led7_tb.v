`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 10:32:24 AM
// Design Name: 
// Module Name: bin2led7_tb
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


module bin2led7_tb;
    reg enable;
    reg [4:0] bin_in;
    wire [6:0] led_out;
    
    bin2led7 uut(enable, bin_in, led_out);
    
    initial begin
        enable = 1;
        for( bin_in = 0; bin_in < 16; bin_in = bin_in + 1)
            #5;
        enable = 0;  
        for( bin_in = 0; bin_in < 16; bin_in = bin_in + 1)
             #5; 
     end
endmodule
