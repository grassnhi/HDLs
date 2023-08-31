module bitwise;
    reg [3:0] a, b;
    wire [3:0] rslt_bw_and, rslt_bw_or, rslt_bw_not, rslt_bw_xor, rslt_bw_xnor;
    wire rslt_log_and, rslt_log_or, rslt_log_not;
    
    assign rslt_bw_and = a&b;
    assign rslt_bw_or = a|b;
    assign rslt_bw_not = ~a;
    assign rslt_bw_xor = a^b;
    assign rslt_bw_xnor = a~^b;
    assign rslt_log_and = a&&b;
    assign rslt_log_or = a||b;
    assign rslt_log_not = !a;
endmodule