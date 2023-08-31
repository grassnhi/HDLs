module force_release(a, b, c, out);
    input a, b, c;
    output out;
    wire d;
    and (d, a, b);
    and (out, d, c);
endmodule // force_release 


// Test bench
module t_force_release;
    reg a, b, c;
    wire out;

    force_release F1(a, b, c, out);

    initial begin
        $monitor ("a = %b, b = %b, c = %b, out = %b", a, b, c, out);
    end

    initial begin
        a = 1;
        b = 1;
        c = 1;
        #5 force F1.d = 0;
        #5 release F1.d;
        #5 $stop;
    end
endmodule // t_force_release