module piso_tb;

        reg d0, d1, d2, d3, clk, mode;
	wire q3, q0, q1, q2;

piso DUT (d0, d1, d2, d3, mode, clk, q3, q0, q1, q2);

initial
 begin
  clk=0;
  mode=0;
#5 d3 =1;
   d2 =0;
   d1 =1;
   d0 =0;
#20 mode=1;
 end

always #5 clk=~clk;

initial
#200 $finish;

endmodule
