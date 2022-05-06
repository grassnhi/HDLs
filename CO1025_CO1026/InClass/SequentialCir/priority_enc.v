module priority_encoder (
    output reg [2:0] Code,
    output valid_data,
    input [7:0] Data 
);
    assign valid_data = | Data; 

    always @(Data) begin
        casex(Data)
            8'b1xxxxxxx : Code = 7;
            8'b01xxxxxx : Code = 6;
            8'b001xxxxx : Code = 5;
            8'b0001xxxx : Code = 4;
            8'b00001xxx : Code = 3;
            8'b000001xx : Code = 2;
            8'b0000001x : Code = 1;
            8'b00000001 : Code = 0;
            default     : Code = 3'bxxx;
        endcase
    end    
endmodule