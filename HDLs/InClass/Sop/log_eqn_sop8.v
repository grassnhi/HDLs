module log_eqn_sop (x1, x2, x3, x4, z1);
    input x1, x2, x3, x4;
    output z1;

    assign z1 = (x1&~x2) | (~x3&x4) | (x2&x3);
endmodule
