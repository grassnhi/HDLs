module dff(D, clk, Q, Qbar);
    input D, clk;
    output reg Q, Qbar;
    always @(posedge clk) begin
        Q <= D;
        Qbar <= ~D;
    end
endmodule