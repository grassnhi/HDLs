module t_adder4b;
    reg [3:0] a, b;
    reg c_in;
    wire[3:0] S; // outputs of UUT are wires
    wire C4;

    adder4b a1(S, C4, a, b, c_in);

    initial begin
        a = 4’b0000; b = 4’b0000; c_in = 1’b0; // at 0 ns
        #10 a = 4’b1111; b = 4’b0000; c_in = 1’b1; // at 10 ns
        #10 a = 4’b0000; b = 4’b1111; c_in = 1’b1; // at 20 ns
        #10 a = 4’b1111; b = 4’b0001; c_in = 1’b0; // at 30 ns
        #10 a = 4’b0001; b = 4’b1111; c_in = 1’b0; // at 40 ns
        #10 $stop; // at 50 ns – stops simulation
    end
endmodule