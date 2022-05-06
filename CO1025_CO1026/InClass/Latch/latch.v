module latch(output Q, input D, Enable);
    assign Q = Enable ? D : Q;
endmodule