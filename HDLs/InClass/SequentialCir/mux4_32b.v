module Mux_4_32 (
    output [31:0] mux_out,
    input [31:0] data_3, data_2, data_1, data_0,
    input [1:0] select,
    input enable
);
    reg [31:0] mux_int;
// add the enable functionality
    assign mux_out = enable ? mux_int: 32'bz;
// choose between the four inputs
    always @(data_3 or data_2 or data_1 or data_0 or select) begin
        case(select)
            2'd0:   mux_int = data_0;
            2'd1:   mux_int = data_1;
            2'd2:   mux_int = data_2;
            2'd3:   mux_int = data_3;
        endcase
    end
endmodule