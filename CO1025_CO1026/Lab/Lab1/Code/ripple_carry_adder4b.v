`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 01:14:19 PM
// Design Name: 
// Module Name: ripple_carry_adder4b
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


module ripple_carry_adder4b(
        c_out, 
        s,
        a,
        b,
        c_in
    );
    
    output [3:0]s;
    output c_out;
    input [3:0]a;
    input [3:0]b;
    input c_in;
    
    wire [2:0]c;
    
    full_adder FA0(c[0], s[0], a[0], b[0], c_in);
    full_adder FA1(c[1], s[1], a[1], b[1], c[0]);
    full_adder FA2(c[2], s[2], a[2], b[2], c[1]);
    full_adder FA3(c_out, s[3], a[3], b[3], c[2]);
    
endmodule
