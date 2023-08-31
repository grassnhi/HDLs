`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 11:06:20 AM
// Design Name: 
// Module Name: half_adder
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


module half_adder_tb;
    reg a, b;
    wire sum, carry;
    
    half_adder uut(sum, carry, a, b);
    
    initial begin
        $monitor("%t : A: %b B: %b Sum: %b  -- Carry: %b", $time, a, b, sum, carry); 
    end
    
    initial begin
        a <= 1'b0;
        b <= 1'b0;
        
        #5;
        a <= 1'b0;
        b <= 1'b1;
        
        #5;
        a <= 1'b1;
        b <= 1'b0;
        
        #5;
        a <= 1'b1;
        b <= 1'b1;
        
       #5;
    end
endmodule

