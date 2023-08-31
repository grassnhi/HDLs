module t_adder4b;
    reg [3:0] a, b;
    reg c_in;
    wire[3:0] S;
    wire C4;

    adder4b a1(S, C4, a, b, cs);

    initial begin
        a = 4’b0000;
        #10 a = 4’b1111;
        #10 a = 4’b0000;
        #10 a = 4’b1111;
        #10 a = 4’b0001;
        #10 $stop;
    end

    initial begin
        b = 4’b0000;
        #10 b = 4’b0000;
        #10 b = 4’b1111;
        #10 b = 4’b0001;
        #10 b = 4’b1111;
    end

    initial begin
        c_in = 1’b0;
        #10 c_in = 1’b0;
        #10 c_in = 1’b1;
        #10 c_in = 1’b0;
        #10 c_in = 1’b0;
    end
    // Oder of initial blocks are not important
    
endmodule