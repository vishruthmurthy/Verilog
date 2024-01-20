module comparator_4 (a,b,y_e,y_g,y_l);

	input [3:0]a,b;
	output reg y_e,y_g,y_l;

always@(*)

 begin
	if(a==b)
	 begin
	y_e<= (~(a[3] ^ b[3])) & (~(a[2] ^ b[2])) & (~(a[1] ^ b[1])) & (~(a[0] ^ b[0]));
	y_g=0;
	y_l=0;
	 end

	else if(a>b)
	 begin
	y_g<= a[3] & (~b[3]) | (a[2] & (~b[2]) & (~(a[3] ^ b[3]))) | (a[1] & (~b[1]) & (~(a[3] ^ b[3])) & (~(a[2] ^ b[2]))) | (a[0] & (~b[0]) & (~(a[1] ^ b[1])) & (~(a[3] ^ b[3])) & (~(a[2] ^ b[2])));
	y_e=0;
	y_l=0;
	 end

	else
	 begin
	y_l<= (~a[3]) & b[3] | ((~a[2]) & (b[2]) & (~(a[3] ^ b[3]))) | ((~a[1]) & (b[1]) & (~(a[3] ^ b[3])) & (~(a[2] ^ b[2]))) | ((~a[0]) & (b[0]) & (~(a[1] ^ b[1])) & (~(a[3] ^ b[3])) & (~(a[2] ^ b[2])));
	y_g=0;
	y_e=0;
	 end

 end

endmodule
