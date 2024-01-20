module bcd_counter(count,clk,rst);

input clk, rst;
output [3:0] count;
reg [3:0]q;

assign count=q;

always @(posedge clk)
 begin

	if (rst)
	begin
	q<= 4'b0000;
	end

	else
	begin
	 if(q!=4'b1001)
	  q<= q+1;
	 else
	  q<= 4'b0000;
	end
 end

endmodule
