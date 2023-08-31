module t_mod10_counter;
    reg clk, rst;
    wire [3:0] count;

    mod10_counter M1(.clk(clk), .rst(rst), .count(count));

    initial $monitor("time = %t: rst = %b, count = %b", $time, rst, count);

    initial begin //generating the clock signal
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1'b0; //test reset
        #15 rst = 1'b1; //leave rst active in at least a cycle
        #120 $stop; //let the counter count in at least 11 cycles
    end
endmodule