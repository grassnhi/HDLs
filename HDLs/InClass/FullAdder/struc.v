module fulladder_struc(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    wire ha_sum_1, ha_cy_1, ha_cy_0;

    xor(ha_sum_1, a, b);
    and(ha_cy_1, a, b);

    xor(sum, ha_sum_1, cin);
    and(ha_cy_0, ha_sum_1, cin);
    
    or(cout, ha_cy_1, ha_cy_0);
endmodule