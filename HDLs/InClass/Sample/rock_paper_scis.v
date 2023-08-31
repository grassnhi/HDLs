module rps(win, player, p0, p1);
input ...
output...
wire s0, s1; s0 -> -2, s1 -> 1
wire tie;
wire temp;
wire check;
assign temp = p0 - p1; // 0, -2, 2, -1, 1
assign tie = temp == 0; //->tie = 1 <> 0
assign s0 = temp == -2; // ->1 <> 0 ////// 2 ->0
assign s1 = temp == 1; // -> 0 <> 1 ///// -1 ->0
assign check = s0 || s1; // -> check = 1 -> check = 0
assign player = check?1'b0:1'b1;
assign player = tie?1'bx:player;


endmodule

0->p0 win-> 0 - 2-> -2, 1 - 0->1, 2 - 1->1
1->p1 win-> 2 - 0, 0 - 1, 1 - 2