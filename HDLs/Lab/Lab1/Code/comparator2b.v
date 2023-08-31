`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 05:10:16 PM
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


module comparator2b(
    a_gt_b, a_lt_b, a_eq_b, a, b
    );
    
    output a_gt_b, a_lt_b, a_eq_b;
    input [1:0]a, b;
    wire net0_a1b1, net_a0a1b0, net_a0b0b1, net3_a1b1, net_a0b0, net;
    
    and AND_A1B1(net0_a1b1, ~a[1], b[1]),
        AND_A0A1B0(net_a0a1b0, ~a[1], ~a[0], b[0]),
        AND_A0B0B1(net_a0b0b1, ~a[0], b[0], b[1]);
        
    xnor XNOR_A1B1(net3_a1b1, a[1], b[1]),
         XNOR_A0B0(net_a0b0, a[0], b[0]);
         
    or OR_andx3(a_lt_b, net0_a1b1, net_a0a1b0, net_a0b0b1);
        
    and AND_2xnor(a_eq_b, net3_a1b1, net_a0b0);
    
    or OR_LAST(net, a_lt_b, a_eq_b);
    
    not(a_gt_b, net);
endmodule
