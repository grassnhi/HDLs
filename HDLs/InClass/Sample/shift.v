module shift(data, shamt, rslt, lr);
    input [7:0] data;//left operand
    input [2:0] shamt;//shift amount
    output [7:0] rslt;
    input lr; //0: shift left; 1: shift right
    
    assign rslt = (lr == 1'b0)? (data << shamt):(data >> shamt);
endmodule