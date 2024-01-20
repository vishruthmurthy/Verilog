//Adder
module ADD(z, x, y);
input [15:0]x, y;
output reg [15:0]z;
always @(*)
z = x + y;
endmodule
