module t_adder4b;
    reg[9:0] stim;//10 bits instead of 9 bits
    wire[3:0] S;
    wire C4;

    adder4b a1(S, C4, stim[8:5], stim[4:1], stim[0]);

    initial $monitor(“%t: %b %h %h %h %b”, $time, C4, S, stim[8:5], stim[4:1], stim[0]);

    initial begin
        for (stim = 0; stim < 512; stim = stim + 1) #10;
        #10 $stop;
    end
endmodule