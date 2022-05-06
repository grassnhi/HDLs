`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 02:21:20 PM
// Design Name: 
// Module Name: rgb_leds
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


module rgb_leds(
    input [3:0] btn, input [1:0] sw, output reg [5:0] led
    );
    
    always @(*) begin
        if(!sw[0] && !sw[1])  
            case(btn)
                4'b0001:    led = 6'b000001;
                4'b0010:    led = 6'b000010;
                4'b0100:    led = 6'b000100;
                4'b1000:    led = 6'b000111;
                default:    led = 6'b000000;
            endcase
        else if(!sw[0] && sw[1]) 
            case(btn)
                4'b0001:    led = 6'b001000;
                4'b0010:    led = 6'b010000;
                4'b0100:    led = 6'b100000;
                4'b1000:    led = 6'b111000;
                default:    led = 6'b000000;
             endcase   
        else if(sw[0] && !sw[1])
            case(btn)
                4'b0000:    led = 6'b000000;
                4'b0001:    led = 6'b001001;
                4'b0010:    led = 6'b010010;
                4'b0100:    led = 6'b100100;
                4'b1000:    led = 6'b111111;
                default:    led = 6'b111111;
            endcase 
        else 
            case(btn)
                4'b0001:    led = 6'b011011;
                4'b0010:    led = 6'b110110;
                4'b0100:    led = 6'b101101;
                4'b1000:    led = 6'b111111;
                default:    led = 6'b000000;
            endcase 
    end
endmodule
