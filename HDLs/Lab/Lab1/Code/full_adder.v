`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 11:30:12 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(c_out, sum, a, b, c_in);
    input a, b, c_in;
    output sum, c_out;
    wire c1, s1, c2;

    half_adder FIRST(s1, c1, a, b);
    half_adder SECOND(sum, c2, s1, c_in);
    
    or(c_out, c2, c1);
endmodule
