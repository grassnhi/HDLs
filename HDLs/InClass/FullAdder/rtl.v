module fulladder_rtl(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

// cout = (a ⊕ b) ⋅ cin + a ⋅ b = (a ⋅ b)|(a ⋅ cin)|(b ⋅ cin)