module bcd_counter_tb;

 reg clk,rst;
 wire [3:0] count;


bcd_counter DUT(count,clk,rst);

always #5 clk=~clk;

initial
	begin

	 clk=0; 
	 rst=0;
	
	#5 rst=1;
	#5 rst=0;
	
	#200 $finish; 

	end

endmodule


