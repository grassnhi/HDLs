module comparator3b (
    a, b, a_lt_b, a_eq_b, a_gt_b
);
    input [2:0]a, b;
    output a_lt_b, a_eq_b, a_gt_b;

    and inst1(net1, ~a[2], b[2]);

    xnor    inst2(net2, a[2], b[2]),
            inst3(net3, a[1], b[1]),
            inst4(net4, a[0], b[0]);

    and inst5(net5, a[2], ~b[2]),
        inst6(net6, net2, ~a[1], b[1]),
        inst7(net7, net2, net3, ~a[0], ~b[0]),
        inst9(net9, net2, a[1], ~b[1]),
        inst10(net10, net2, net3, a[0], ~b[0]);

    or  inst11(a_lt_b, net1, net6, net7),
        inst12(a_gt_b, net5, net9, net10);
        
    and inst8(a_eq_b, net2, net3, net4);
endmodule