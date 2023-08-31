`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 02:21:42 PM
// Design Name: 
// Module Name: rgb_leds_tb
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


module rgb_leds_tb;
    reg [3:0] btn;
    reg [1:0] sw;
    wire [5:0] led;
    
    rgb_leds uut(btn, sw, led);
    
    initial begin
        btn = 4'b0000;
        sw = 2'b00;
        
        #5 btn = 4'b0001;
        #5 btn = 4'b0010;
        #5 btn = 4'b0100;
        #5 btn = 4'b0111;
        
        sw = 2'b10;
        #5 btn = 4'b0001;
        #5 btn = 4'b0010;
        #5 btn = 4'b0100;
        #5 btn = 4'b0111;        
        
        sw = 2'b01;
        #5 btn = 4'b0001;
        #5 btn = 4'b0010;
        #5 btn = 4'b0100;
        #5 btn = 4'b0111;
        
        sw = 2'b11;
        #5 btn = 4'b0001;
        #5 btn = 4'b0010;
        #5 btn = 4'b0100;
        #5 btn = 4'b0111;
        
        $stop;
    end
endmodule