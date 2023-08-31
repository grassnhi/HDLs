module mux4bit(in0, in1, sel, out);
    input [3:0] in0, in1;
    input sel;
    output [3:0] out;

    assign out = sel?in0:in1;
endmodule 

mux4bit M(.in0(in0[3:0]), .in1(in1[3:0]),.sel(sel[0]), .out(out));
    initial begin
        for (in0 = 0; in0 < 16; in0 = in0 + 1)
            for (in1 = 0; in1 < 16; in1 = in1 + 1)
                for (sel = 0; sel < 2; sel = sel + 1)
                    #5;
                    #5 $finish;
    end