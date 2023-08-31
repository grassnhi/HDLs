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

module fsm (input [3:0] Bin, input clk, reset, output [3:0] Bout);
reg [26:0] count = 1;
reg [1:0] state, next_state;
wire [3:0] string;
reg [3:0] out = 4'b0000;
parameter S_0 = 2'b00, S_1 = 3'b01, S_2 = 3'b10, S_3 = 3'b11;

always @(posedge clk or negedge reset) begin
    if (reset == 1'b0) state <= S_0;
    else state <= next_state;
end

always @(state or Bin) begin
    case (state)
        S_0: case (Bin)
            4'b0001: next_state = S_0;
            4'b0010: next_state = S_1;
            4'b0100: next_state = S_2;
            4'b1000: next_state = S_3;
            default: next_state = S_0;
        endcase
        S_1: case (Bin)
            4'b0001: next_state = S_0;
            4'b0010: next_state = S_1;
            4'b0100: next_state = S_2;
            4'b1000: next_state = S_3;
            default: next_state = S_1;
        endcase
        S_2: case (Bin)
            4'b0001: next_state = S_0;
            4'b0010: next_state = S_1;
            4'b0100: next_state = S_2;
            4'b1000: next_state = S_3;
            default: next_state = S_2;
        endcase
        S_3: case (Bin)
            4'b0001: next_state = S_0;
            4'b0010: next_state = S_1;
            4'b0100: next_state = S_2;
            4'b1000: next_state = S_3;
            default: next_state = S_3;
        endcase
    endcase
end
    assign string = 4'b0011;
always@(posedge clk)begin
    count <= count + 1;
    if(count == 125000000) begin
        case (state)
            S_0: out <= string;
            S_1: out <= {out[2:0],out[3]};
            S_2: out <= {out[0],out[3:1]};
            S_3: out <= out;
            default: out <= string;
        endcase
        count <= 1;
    end
end
    assign Bout = out;
endmodule



   
