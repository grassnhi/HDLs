`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 10:23:20 AM
// Design Name: 
// Module Name: bin2leg7
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


module bin2led7(enable, bin_in, led_out);
    input enable;
    input [3:0] bin_in;
    output reg [6:0] led_out;
    
    always @(*) begin
        if(enable)
            case(bin_in)
                4'b0000:    led_out = 7'b1000000; //0
                4'b0001:    led_out = 7'b1111001; //1
                4'b0010:    led_out = 7'b0100100; //2
                4'b0011:    led_out = 7'b0110000; //3
                4'b0100:    led_out = 7'b0011001; //4
                4'b0101:    led_out = 7'b0010010; //5
                4'b0110:    led_out = 7'b0000010; //6
                4'b0111:    led_out = 7'b1111000; //7
                4'b1000:    led_out = 7'b0000000; //8
                4'b1001:    led_out = 7'b0010000; //9             
                default:    led_out = 7'b1111111;
            endcase
        else                led_out = 7'b1111111;
    end
endmodule
