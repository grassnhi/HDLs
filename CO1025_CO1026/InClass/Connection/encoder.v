module decoder(In, En, Out);
    input [1:0] In;
    input En;
    output [3:0] Out;
    ….
endmodule


module positional(…);
    wire [1:0] pIn;
    wire pEn;
    wire [3:0] pOut;
    ….
    decoder D1(pIn, pEn, pOut);
endmodule

// or: 
module name(…);
    wire [1:0] nIn;
    wire nEn;
    wire [3:0] nOut;
    ….
    decoder D1(.En(nEn),.In(nIn),.Out(nOut));
endmodule