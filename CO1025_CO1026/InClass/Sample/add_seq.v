module add_seq(input [3:0] a, b, c, d, output reg [5:0] result);
    reg [4:0] out1, out2;
    always @(a, b, c, d) begin
        out1 = a + b;
        out2 = c + d;
        result = out1 + out2;
    end
endmodule