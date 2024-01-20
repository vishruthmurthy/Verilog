//Counter.
module COUNT(out, clk, loadb, decb, datain);
input clk, loadb, decb;
input [15:0] datain;
output reg [15:0]out;
always @(posedge clk)
begin
if(loadb) out <= datain;
else if(decb)
out <= out - 1;
end
endmodule
