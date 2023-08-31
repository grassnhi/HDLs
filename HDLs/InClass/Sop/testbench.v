module log_eqn_sop_tb;
    reg [5:1] x; //combine stimulus
    wire z1;

    initial for (x = 0; x < 16; x = x + 1) #5;
    log_eqn_sop inst1(.x1(x[1]),.x2(x[2]),.x3(x[3]),.x4(x[4]),.z1(z1));
endmodule