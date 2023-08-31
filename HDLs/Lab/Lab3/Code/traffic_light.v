`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 10:21:01 AM
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
    input clk, rst, output reg [1:0] clk_out1, output reg [1:0] clk_out2
    );
    reg [30:0]count = 1;
    reg red = 0, yellow = 0, green = 0;
    
    always@(posedge clk, posedge rst)begin
        if(rst) begin
            count <= 0;
        end
        else begin
            count <= count + 1;
            clk_out1[0] <= 1;// green _ 3s
            clk_out1[1] <= 0; 
            clk_out2[0] <= 0;
            clk_out2[1] <= 1; // red_5s
            if(count >= 375000000) begin
                clk_out1[0] <= 1;
                clk_out1[1] <= 1; //yellow _ 2s
            end
            if(count >= 625000000) begin
                clk_out1[1] <= 1; // red _ 5s
                clk_out1[0] <= 0;
                clk_out2[0] <= 1; // green_3s
                clk_out2[1] <= 0;
            end
            if(count >= 1000000000) begin
                clk_out2[0] <= 1; 
                clk_out2[1] <= 1; // yellow_2s
            end
            if(count == 1250000000) count <= 1;
        end
    end
endmodule
