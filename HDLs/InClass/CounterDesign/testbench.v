`timescale 1ps/1ps
module t_counter ();
    reg Load, reset, clk, mode;
    reg [3:0] data_in;
    wire [3:0] data_out;
    parameter time_out = 300;
    initial #time_out $stop;
   
    counter C1(Load, reset, clk, mode, data_in, RCO, data_out);
    initial $monitor("Load = %b, reset = %b, mode = %b, data_in = %b, RCO = %b, data_out = %b". Load, reset, mode, data_in, RCO, data_out);
    initial #5 clk = ~clk
endmodule