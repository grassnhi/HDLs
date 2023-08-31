module majority (major, V1, V2, V3) ;
    output reg major ;
    input V1, V2, V3 ;

    always @(V1, V2, V3) begin
        if (V1 && V2 || V2 && V3 || V1 && V3) major = 1;
        else major = 0;
    end
endmodule