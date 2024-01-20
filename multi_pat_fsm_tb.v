module multi_pat_fsm_tb;

reg clk, rst, in;
wire out;

multi_pattern_fsm DUT (clk, rst, in, out, out_pattern);

always #5 clk=~clk;

initial

//repeat(10)
begin
//a= $random();
//b= $random();

	clk =0; rst =0; in= 0;
#5 	rst =1;
#5	rst =0;
#5	in= 0;
#5	in= 0;
#5	in= 1;
#5	in= 0;
#5	in= 1;
#5	in= 0;
#5	in= 1;
#5	in= 1;
#5	in= 1;
#5	in= 1;
#5	in= 0;
#5	in= 0;
#5	in= 1;
#5	in= 0;
#5	in= 1;

#5 $display("in=%b,out=%b",in,out);

#200 $finish;

end

endmodule
