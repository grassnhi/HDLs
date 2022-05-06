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
    input clk, rst, sw, 
    output [1:0] out1, 
    output [1:0] out2
    );
    reg [30:0]count = 1;
    parameter n = 125000000;

    reg [1:0] clk_out1 = 0;
    reg [1:0] clk_out2 = 0;

    assign out1 = clk_out1;
    assign out2 = clk_out2;


    always@(posedge clk, posedge rst)begin
        if(rst) begin
            count <= 1;
        end
        else begin 
            if(!sw) begin
                count <= count + 1;
                if(count >= 1 && count < 3*n) begin
                    clk_out1[0] <= 1;// green _ 3s
                    clk_out1[1] <= 0; 
                    clk_out2[0] <= 0;
                    clk_out2[1] <= 1; // red_5s
                end
                else if(count >= 3*n && count < 5*n) begin
                    clk_out1[0] <= 1;
                    clk_out1[1] <= 1; //yellow _ 2s
                end
                else if(count >= 5*n && count < 8*n) begin
                    clk_out1[1] <= 1; // red _ 5s
                    clk_out1[0] <= 0;
                    clk_out2[0] <= 1; // green_3s
                    clk_out2[1] <= 0;
                end
                else if(count >= 8*n && count < 10*n) begin
                    clk_out2[0] <= 1; 
                    clk_out2[1] <= 1; // yellow_2s
                end
                else if(count == 10*n) count <= 1;
            end
            else if(sw) begin
                count <= count + 1;
                clk_out1[0] <= 1;// green _ 5s
                clk_out1[1] <= 0; 
                clk_out2[0] <= 0;
                clk_out2[1] <= 1; // red_6s 
                if(count >= 5*n && count < 6*n) begin
                    clk_out1[0] <= 1;
                    clk_out1[1] <= 1; //yellow _ 1s
                end
                else if(count >= 6*n && count < 9*n) begin
                    clk_out1[1] <= 1; // red _ 4s
                    clk_out1[0] <= 0;
                    clk_out2[0] <= 1; // green_3s
                    clk_out2[1] <= 0;
                end
                else if(count >= 9*n && count < 10*n) begin
                    clk_out2[0] <= 1; 
                    clk_out2[1] <= 1; // yellow_1s
                end
                else if(count == 10*n) begin 
                    count <= 1;     
                end  
            end
        end
    end
endmodule