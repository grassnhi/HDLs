module majority (major, V1, V2, V3) ;
    output major ;
    input V1, V2, V3 ;
    assign major = V1 & V2 | V2 & V3 | V1 & V3;
endmodule