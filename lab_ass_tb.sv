//Top
`include "Interface.sv"
`include "DataPath.sv"
`include "ControlPath.sv"

module multiplier_tb;
logic clk = 0;
always #5 clk = ~clk;
multiplier_intf inf(clk);
datapath DUT(inf);
control UUT(inf);
initial begin
clk = 1'b0;
#3 inf.mul_control.start = 1'b1;
repeat(4) begin
inf.mul_datapath.datain = $random; #10;
inf.mul_datapath.datain = $random; #150;
end
end
initial begin
$monitor($time,"%d,%d",DUT.y,inf.done);
$dumpfile("dump.vcd");
$dumpvars(1);
#1000 $finish;
end
endmodule
