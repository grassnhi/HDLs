module mac(output [7:0] Z, output Ovflw, input [3:0] A, B, input [7:0] C);
    wire [8:0] P;
    assign P = A*B + C;
    assign Z = P[7:0];
    assign Ovflw = P[8];
endmodule