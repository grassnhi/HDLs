module adder4b (Sum, Cout, A, B, Cin);
    input [3:0] A, B;
    input Cin;
    output reg [3:0] Sum;
    output reg Cout;

    always @(A, B, Cin){Cout,Sum} = A + B + Cin;
endmodule