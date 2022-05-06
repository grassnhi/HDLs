`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 10:04:33 AM
// Design Name: 
// Module Name: bina_counter4b
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


module bina_counter4b(
    input btn, clk, output [3:0] counter
    );
    wire out;
    reg [3:0]tmp = 4'b0000;
    rising_edge_detection ADD( out, btn, clk);
    always @(posedge clk) begin
        if(out) begin
            tmp <= tmp + 1;
        end
    end
    assign counter = tmp;
endmodule
