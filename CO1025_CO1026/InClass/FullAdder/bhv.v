module fulladder_bhv(a, b, cin, sum, cout);
    input a, b, cin;
    output reg sum, cout;

    always @(a, b, cin) begin
        sum = a ^ b ^ cin;
        cout = (a & b) | (a & cin) | (b & cin);
    end
endmodule


// cout = (a ⊕ b) ⋅ cin + a ⋅ b = (a ⋅ b)|(a ⋅ cin)|(b ⋅ cin)