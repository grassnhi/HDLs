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
    
    always@(posedge clk, posedge rst)begin // kích clk ban đầu trước nè, clk sau phải theo clk đầu á
        if(rst) begin 
            count <= 1; // biến đếm
            tmp <= 0; 
            //tmp là clk mới nè, đầu tiên vô thì set giá trị ban đầu
        end
        else begin
            count <= count + 1; // thì mỗi lần clk ban đầu được kích thì nó đếm
            if(count == 62500000) begin
                // khi mà clk ban đầu đến được 1/2 số lần mong muốn thì đảo trạng thái clk sau
                tmp <= !tmp; // đây, đảo trạng thái
                // lí do khi mà đến mới 1 nữa thì đảo là vì 1 chu kì của clk nó như này 
                // ... chả biết giải thích sao nữa, tự hiểu đê ...
                count <= 1; // đảo xong thì trả biến đếm về lại giá trị ban đầu
            end
        end
        
    end
    assign clk_out1 = tmp;
    assign clk_out2 = !tmp;
endmodule
