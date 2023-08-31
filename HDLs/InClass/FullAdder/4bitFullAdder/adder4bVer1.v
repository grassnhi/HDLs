module t_adder4b;
    reg[8:0] stim; // Combine all input signals into one vector
    wire[3:0] S; // outputs of UUT are wires
    wire C4;

    adder4b a1(S, C4, stim[8:5], stim[4:1], stim[0]);

    initial $monitor(“%t: %b %h %h %h %b”, $time, C4, S, stim[8:5], stim[4:1], stim[0]);

    initial begin
        stim = 9'b000000000; // at 0 ns
        #10 stim = 9'b111100001; // at 10 ns
        #10 stim = 9'b000011111; // at 20 ns
        #10 stim = 9'b111100010; // at 30 ns
        #10 stim = 9'b000111110; // at 40 ns
        #10 $stop; // at 50 ns – stops simulation
        //Have not tested all combination yet
    end
endmodule