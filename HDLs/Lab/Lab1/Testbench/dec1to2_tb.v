`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 09:37:16 AM
// Design Name: 
// Module Name: dec1to2
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


module dec1to2_tb;
    reg in;
    wire out1;
    wire out2;
    
    dec1to2 uut(
        .in(in),
        .out1(out1),
        .out2(out2)
        );
    initial begin
        $monitor("At time %t : input = %b - output1 = %b - output2 = %b", $time, in, out1, out2);
    end
    
    initial begin
        in <= 0;
        #10;
        in <= 1;
        #10 $stop;
    end
endmodule
