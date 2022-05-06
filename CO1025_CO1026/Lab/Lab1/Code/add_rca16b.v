module ripple_carry_adder_16b (
    sum,
    c_out,
    a,
    b,
    c_in
);
    output [15:0] sum;
    output c_out;
    input [15:0] a, b;
    input c_in;
    wire c_in4, c_in8, c_in12;

    ripple_carry_adder4b M1(sum[3:0], c_in4, a[3:0], b[3:0], c_in);
    ripple_carry_adder4b M1(sum[7:4], c_in8, a[7:4], b[7:4], c_in4);
    ripple_carry_adder4b M1(sum[11:8], c_in12, a[11:8], b[11:8], c_in8);
    ripple_carry_adder4b M1(sum[15:12], c_out, a[3:0], b[3:0], c_in12);
endmodule