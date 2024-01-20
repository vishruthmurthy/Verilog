module fsm_tb;

logic clk,rst,in;
logic out;

fsm DUT (clk,rst,in,out);

always #5 clk=~clk;

initial begin
clk<= 0;
rst<=0;
#4 rst<=1;
#10 rst<=0;
#100 $finish;
end

initial begin
	in<=1;
#4; in<=1;
#5; in<=0;
#5; in<=1;
#5; in<=0;
#5; in<=1;
#5; in<=1;
#5; in<=0;
#5; in<=1;
#100 $finish;

$dumpfile("text.vcd");
$dumpvars;
end

endmodule

