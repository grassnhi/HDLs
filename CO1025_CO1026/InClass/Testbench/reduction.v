module reduction (a, and_rslt, nand_rslt, or_rslt, nor_rslt, xor_rslt, xnor_rslt);
    input [3:0] a;
    output and_rslt, nand_rslt, or_rslt, nor_rslt, xor_rslt, xnor_rslt;
    
    assign and_rslt = &a; //reduction AND
    assign nand_rslt = ~&a; //reduction NAND
    assign or_rslt = |a; //reduction OR
    assign nor_rslt = ~|a; //reduction NOR
    assign xor_rslt = ^a; //reduction exclusive-OR
    assign xnor_rslt = ^~a; //reduction exclusive-NOR
endmodule