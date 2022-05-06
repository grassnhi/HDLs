`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 12:27:45 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder_tb;
    reg a, b, c_in;
    wire sum, c_out;
    
    full_adder uut(c_out, sum, a, b, c_in);
    
    initial begin
        $monitor("%t : A: %b B: %b C_in: %b -- C_out: %b  Sum: %b", $time, a, b, c_in, sum, c_out); 
    end
    
    initial begin
            a <= 1'b0;
            b <= 1'b0;
            c_in <= 1'b0;
            
            #5;
            c_in <= 1'b1;
            
            #5;
            b <= 1'b1;
            c_in <= 1'b0;
            
            #5;
            b <= 1'b1;
            c_in <= 1'b1;
            
            #5;
            a <= 1'b1;
            b <= 1'b0;
            c_in <= 1'b0; 
           
            #5;
            a <= 1'b1;
            c_in <= 1'b1; 
            
            #5;
            a <= 1'b1;
            b <= 1'b1;
            c_in <= 1'b0; 
            
            #5;
            c_in <= 1'b1;  
                              
            #5;
        end
endmodule
