module comparator_assign(a, b, a_lt_b, a_lte_b, a_gt_b, a_gte_b);
    input [3:0] a, b;
    output a_lt_b, a_gt_b, a_lte_b, a_gte_b;
    
    assign a_lt_b = a < b;
    assign a_lte_b = a <= b;
    assign a_gt_b = a > b;
    assign a_gte_b = a >= b;
endmodule