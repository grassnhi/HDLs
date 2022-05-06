/*
Design and implement a 4-bit counter as following requirements:
    - Interface: module counter(input clk, reset, mode, output [3:0] count, output RCO);
    - "reset" is asynchronous and active low
    - "RCO" = 1 if and only if "count" = 4'b0000
    - When "mode" == 0, the module counts up while it counts down if "mode" ==  1
*/

module counter (
    input clk, reset, mode, output [3:0] count, output RCO
);
    always @(posedge clk, posedge reset) begin
        if(reset == 1)  count <= 4'd0;
        else if(mode == 0) begin    //Count up
            if(count == 15) count <= 0;
            else count <= count - 1; 
        end
        else begin  // Count down
            if(count == 0) count <= 15;
            else    count <= count - 1;
        end
    end
endmodule