`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 09:33:30 AM
// Design Name: 
// Module Name: dff
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


module dff(
    input D,
    input clk,
    input rst,
    output reg Q
    );
 
always @ (posedge clk, posedge rst)
begin
    if (rst == 1)   Q <= 1'b0;
    else            Q <= D;
end
 
endmodule
