//Register 2
module PIPO2(y, clk, loadP, clrP, z);
input clk, loadP, clrP;
input [15:0] z;
output reg [15:0]y;
always @(posedge clk)
begin
if(clrP) y<= 16'b0;
else if(loadP) y<= z;
end
endmodule
