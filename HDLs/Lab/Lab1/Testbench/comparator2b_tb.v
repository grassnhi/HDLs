`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 05:15:24 PM
// Design Name: 
// Module Name: comparator2b
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


module comparator2b_tb;
    reg [2:0]a, b;
    wire a_gt_b, a_lt_b, a_eq_b;
    
    comparator2b uut(a_gt_b, a_lt_b, a_eq_b, a, b);
    
    initial begin
        $monitor("%t : A: %b B:-- A_gt_B: %b A_lt_B: %b A_eq_B: %b", $time, a, b, a_gt_b, a_lt_b, a_eq_b); 
    end
    
    initial begin
        for (a = 0; a < 4; a = a + 1) 
            for (b = 0; b < 4; b = b + 1) 
                #5;
        $stop;
    end
endmodule
