//Comparator
module COMP(eqz, out);
input [15:0] out;
output eqz;
assign eqz = (out==0);
endmodule
