`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2022 08:38:17 PM
// Design Name: 
// Module Name: comparator4b
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


module comparator4b(a_gt_b, a_lt_b, a_eq_b, a, b);
output a_gt_b, a_lt_b, a_eq_b;
input [3:0]a, b;

wire gt1, lt1, eq1, gt2, lt2, eq2, n0, n1;

comparator2b comp2b_1(gt1, lt1, eq1, a[1:0], b[1:0]); // lower bits
comparator2b comp2b_2(gt2, lt2, eq2, a[3:2], b[3:2]); // higher bits

and AND0(n0, eq2, gt1),
    AND1(n1, eq2, lt1),
    AND2(a_eq_b, eq1, eq2);

or OR0(a_gt_b, gt2, n0),
   OR1(a_lt_b, lt2, n1);
endmodule
