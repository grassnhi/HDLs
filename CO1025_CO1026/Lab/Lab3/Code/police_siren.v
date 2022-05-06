`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 11:13:03 AM
// Design Name: 
// Module Name: clock_divider
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


module police_siren(
    input clk, rst, output clk_out1, clk_out2
    );
    reg [25:0]count = 1;
    reg tmp = 0;
    
    always@(posedge clk, posedge rst)begin
        if(rst) begin
            count <= 1;
            tmp <= 0;
        end
        else begin
            count <= count + 1;
            if(count == 62500000) begin
                
                tmp <= !tmp;
                count <= 1;
            end
        end
        
    end
    assign clk_out1 = tmp;
    assign clk_out2 = !tmp;
endmodule
