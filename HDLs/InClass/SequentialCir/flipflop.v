module df_sr_behav (
    q,
    q_n,
    data,
    set, 
    reset,
    clk
);
    input data, set, clk, reset;
    output q, q_n;
    reg q;

    assign q_n = ~q;
    always @(posedge clk) begin
        if(reset)   q <= 1'b0;
        else if(set) q <= 1'b1;
        else q <= data;
    end
endmodule