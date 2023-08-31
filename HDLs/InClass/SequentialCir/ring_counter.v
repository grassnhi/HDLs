module ring_counter (
    count, enable, clock, reset
);
    output reg [7:0] count;
    input enable, reset, clock;

    always @(posedge reset or posedge clock) begin
        if(reset == 1'b1)   count <= 8'b0000_0001;

        else if(enable == 1'b1) begin
            case(count)
                8'b0000_0001: count <= 8'b0000_0010;
                8'b0000_0010: count <= 8'b0000_0100;
                8'b0000_0100: count <= 8'b0000_1000;
                8'b0000_1000: count <= 8'b0001_0000;
                8'b0001_0000: count <= 8'b0010_0000;
                8'b0010_0000: count <= 8'b0100_0000;
                8'b0100_0000: count <= 8'b1000_0000;
                8'b1000_0000: count <= 8'b0000_0001;
                default     : count <= 8'bxxxx_xxxx;
            endcase
        end

        /*
        else if(enable == 1'b1) count <= {count[6:0], count[7]};
        */
    end
endmodule