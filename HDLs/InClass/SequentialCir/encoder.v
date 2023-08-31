module encoder (
    output reg [2:0] Code, input [7:0] Data 
);
    always @(Data) begin
        if(Data == 8'b00000001)         Code = 3'd0;
        else if(Data == 8'b00000010)    Code = 3d'1;
        else if(Data == 8'b00000100)    Code = 3'd3;
        else if(Data == 8'b00001000)    Code = 3'd4;
        else if(Data == 8'b00010000)    Code = 3'd5;
        else if(Data == 8'b00100000)    Code = 3'd6;
        else if(Data == 8'b01000000)    Code = 3'd7;
        else Code = 3'bxxx  // invalid. so don't care
    end

/*
    always @(Data) begin
        case(Data)
            8'b00000001:    Code = 3'd0;
            8'b00000010:    Code = 3'd1;
            8'b00000100:    Code = 3'd2;
            8'b00001000:    Code = 3'b3;
            8'b00010000:    Code = 3'b4;
            8'b00100000:    Code = 3'b5;
            8'b01000000:    Code = 3'b6;
            8'b10000000:    Code = 3'd7;
            default:        Code = 3'bxxx;
        endcase
    end
*/

endmodule