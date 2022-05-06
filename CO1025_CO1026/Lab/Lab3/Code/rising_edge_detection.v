`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:08:50 PM
// Design Name: 
// Module Name: rising_edge_detection
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


module rising_edge_detection(
    output out, input in, clk
    );
    reg [1:0] temp;
    always@(posedge clk) begin
        temp[0] <= in;
        temp[1] <= temp[0];
    end
    assign out = ~temp[1] & temp[0];
endmodule

