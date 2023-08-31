module FSM_mealy(input Bin, clk, reset, output reg Bout);
    reg [2:0] state, next_state;
    parameter S_0 = 3'b000, S_1 = 3'b001, S_2 = 3'b010, S_3 = 3'b011, S_4 = 3'b100;

    always @(posedge clk, negedge reset)
        if (reset == 1'b0) state <= S_0;
        else state <= next_state;

    always @(state, Bin) begin
        Bout = 0;
        case (state)
            S_0:    if (Bin == 1'b0) next_state = S_1;
                    else next_state = S_0;

            S_1:    if (Bin == 1'b0) next_state = S_1;
                    else next_state = S_2;

            S_2:    if (Bin == 1'b0) next_state = S_1;
                    else next_state = S_3;

            S_3:    if (Bin == 1'b0) begin
                        next_state = S_4;
                        Bout = 1;
                    end
                    else next_state = S_2;

            S_4:    if (Bin == 1'b0) next_state = S_1;
                    else next_state = S_2;
                    
            default: next_state = S_0;
        endcase
    end
endmodule