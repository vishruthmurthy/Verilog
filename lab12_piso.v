module piso (d0, d1, d2, d3, mode, clk, q3, q0, q1, q2);

	input d0, d1, d2, d3, clk, mode;
	output reg q3, q0, q1, q2;
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9;

assign mode_b = ~mode;

and g1 (w1,q0,mode), g2 (w2,d1,mode_b), g3 (w3,q1,mode), g4 (w4,d2,mode_b), g5 (w5,q2,mode), g6 (w6,d3,mode_b);
or g7 (w7,w1,w2), g8 (w8,w3,w4), g9 (w9,w5,w6);

always @ (posedge clk)
begin
  if(mode)
   begin 
    q0 <= d0;
    q1 <= q0;
    q2 <= q1;
    q3 <= q2;
   end
  
  else
   begin
    q0 <= d0;
    q1 <= w7;
    q2 <= w8;
    q3 <= w9;
   end
end
endmodule
