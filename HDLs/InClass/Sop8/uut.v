module log_eqn_sop8 (x1, x2, x3, x4, z1);
    input x1, x2, x3, x4;
    output z1;
    wire net1, net2;

    and #3 inst1 (net1, x1, x2);
    and #3 inst2 (net2, ~x3, x4);
    or  #5 inst3 (z1, net1, net2);
endmodule