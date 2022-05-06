/*
- A synchronous reset, active low => not include in trigger list
- positive edge clk
- Load (for loading the register wwith data_in a parallel fashion), active low
- mode = 1'b0: left rotate data_out, mode = 1'b1 data_out count up
- RCO = 1'b1 if data_out = 4'b1111
*/

module counter(Load, reset, clk, mode, data_in, RCO, data_out);
    input Load, reset, clk, mode;
    input [3:0] data_in;
    output RCO;
    output reg [3:0] data_out;

    always @(posedge clk) begin
        //A synchronous reset, active low => not include in trigger list
        if(!reset) begin
            data_out <= 4'b0000;
            RCO <= 1'b0;
        end
        else if(!Load)  data_out <= data_in;
        // MSI back to LSI
        else if(!mode)  data_out <= {data_out[2:0], data_out[3]};
        else if(mode)   data_out = data_out + 1'b1;
        else    data_out <= 4'hx;

        assign RCO = (data_out = 4'hf) ? 1'b1 : 1'b0;
    end
endmodule