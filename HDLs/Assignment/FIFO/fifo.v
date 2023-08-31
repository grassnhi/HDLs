`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 08:38:33 PM
// Design Name: 
// Module Name: fifo
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


module fifo (clk_in, switch, reset, data_in, data_out, rgb_leds);
    input clk_in;
    input switch;
    input reset;
    input [3:0] data_in;
    output reg [3:0] data_out;
    output reg [1:0] rgb_leds = 2'b10; 
    reg clk_new = 1;
    
    wire is_full,is_empty;
    reg [2:0]fifo_count = 0;
    reg [26:0] count = 1;
    reg [3:0] memory [0:3]; 

    // Generate 1hz clk
    always@ (posedge clk_in) begin
        count <= count + 1;
        if (count == 62_500_000) begin
            clk_new <= !clk_new;
            count <= 1;
        end
    end

    // Input mode: switch0 = 0
    always@ (posedge clk_new, posedge reset) begin
        if (reset == 1'b1) begin
            data_out <= 4'b0000;
            memory[0] <= 4'b0000;
            memory[1] <= 4'b0000;
            memory[2] <= 4'b0000;
            memory[3] <= 4'b0000;
        end
        else if (switch == 1'b0 && data_in && !is_full) begin
            memory[3] <= data_in;
            memory[2] <= memory[3];
            memory[1] <= memory[2];
            memory[0] <= memory[1];
            fifo_count <= fifo_count + 1;
        end
    // Output mode: switch0 = 1 (No reset)
        else if(switch==1'b1 && !is_empty)begin          
            data_out <= memory[0];
            memory[0] <= memory[1];
            memory[1] <= memory[2];
            memory[2] <= memory[3];
            memory[3] <= 4'b0000;
            fifo_count <= fifo_count - 1;
        end
        else if (is_empty) data_out <= 4'b0000;

        rgb_leds <= {rgb_leds[0],rgb_leds[1]};
    end
    
    assign is_full = (fifo_count == 4);
    assign is_empty = (fifo_count == 0);
    
endmodule