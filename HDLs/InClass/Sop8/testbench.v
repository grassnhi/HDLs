//Module under test
module log_eqn_sop8 (x1, x2, x3, x4, z1);
    input x1, x2, x3, x4;
    output z1;

    and #3 inst1 (net1, x1, x2);
    and #3 inst2 (net2, ~x3, x4);
    or #5 inst3 (z1, net1, net2);
endmodule

module log_eqn_sop8_tb;
    reg x1, x2, x3, x4;
    wire z1;

//Display output response
    initial
        $monitor ("x1=%b, x2=%b, x3=%b, x4 =%b, z =%b", x1, x2, x3, x4, z1);

//Stimulus
    initial begin
        #0 x1=1'b0; x2=1'b0; x3=1'b0; x4=1'b0;
        #10 x1=1'b1; x2=1'b1; x3=1'b1; x4=1'b0;
        #10 x1=1'b0; x2=1'b1; x3=1'b0; x4=1'b1;
        #10 x1=1'b1; x2=1'b1; x3=1'b1; x4=1'b1;
        #10 x1=1'b0; x2=1'b0; x3=1'b0; x4=1'b0;
        #10 $finish;
    end

//Instantiation of UUT
    log_eqn_sop8 inst1 (.x1(x1),.x2(x2),.x3(x3),.x4(x4),.z1(z1));

endmodule