module pos_edge (clk, rst, d_in, d_out);

  input d_in, clk, rst;
  output reg d_out;

   always @(posedge clk)
     begin
	if(rst)
	 d_out<= 0;
	else
         d_out <= d_in;
     end

endmodule
