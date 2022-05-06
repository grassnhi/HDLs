module t_adder4b;
    reg [4:0] a, b;
    reg c_in;
    wire[3:0] S; // outputs of UUT are wires
    wire C4;

    adder4b a1(S, C4, a[3:0], b[3:0], c_in);

    initial begin
        c_in = 1’b0;
        for (a = 0; a < 16; a = a + 1)
            for (b = 0; b < 16; b = b + 1) #10;

        #10 c_in = 1’b1;
        for (a = 0; a < 16; a = a + 1)
            for (b = 0; b < 16; b = b + 1) #10;
            
        $stop;
    end
endmodule