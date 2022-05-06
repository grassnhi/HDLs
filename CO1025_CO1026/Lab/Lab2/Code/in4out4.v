module design4bits(in, out);
    input [3:0]in;
    output reg [3:0]out;

    always @(in) begin
        out[0] = ~^ in;
        out[2] = ~| in;
        out[3] = & in;
        if(in==4'b0001||in==4'b0010||in==4'b0100||in==4'b1000) out[1]<=1'b1;
        else out[1]<=1'b0;
    end
endmodule