module half_adder_struc(a, b, sum, cout);
    input a, b;
    output sum, cout;

    xor(sum, a, b);
    and(cout, a, b);
endmodule

module fulladder_struc(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    wire c1, c2, s2;

    half_add_struc PARTSUM(a, b, s1, c1);
    half_add_struc SUM(s1, cin, sum, c2);
    
    or(cout, c2, c1);
endmodule