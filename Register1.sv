//Register 1
module PIPO1(x, clk, loada, datain);
input clk, loada;
input [15:0] datain;
output reg [15:0] x;
always @(posedge clk)
if(loada) x<= datain;
endmodule
