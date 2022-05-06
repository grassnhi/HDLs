module Mux4 #(parameter n = 1)
( input [n-1: 0] A, B, C, D, input [1:0] sel,
  outputreg [n-1:0] Z );
  always @(*) begin // @(A, B, C, D, sel)
      case (sel)
          2'b00:    Z = A;
          2'b01:    Z = B;
          2'b10:    Z = C;
          default:  Z = D;
      endcase
  end
    
endmodule