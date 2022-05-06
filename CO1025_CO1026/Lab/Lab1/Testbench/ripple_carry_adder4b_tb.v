`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 02:24:36 PM
// Design Name: 
// Module Name: ripple_carry_adder4b
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


module ripple_carry_adder4b_tb;
    reg [4:0]a, b; 
    reg c_in;
    wire [3:0]s;
    wire c_out;
    
    ripple_carry_adder4b uut(c_out, s, a, b,  c_in);
    
    initial begin
        $monitor("%t : A: %b B: %b C_in: %b -- S: %b C_out: %b", $time, a[3:0], b[3:0], c_in, s[3:0], c_out); 
    end
    
    initial begin
        c_in = 1'b0;
        b = 4'b0000;
        a = 4'b0000;
        for (a = 0; a < 16; a = a + 1) begin
             #5;
             b = b + 1;
                  
        end
               
        #10 c_in = 1'b1;
        b = 4'b0000;
        a = 4'b0000;
        for (a = 0; a < 16; a = a + 1) begin
              #5;
              b = b + 1;
                        
        end  
        $stop;   
                
     end
endmodule
