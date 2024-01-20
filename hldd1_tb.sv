module decoder_tb;

logic en,i1,i2;
logic out;

decoder DUT (en,i1,i2,out);


initial begin
#1 en=0;
#1 en=1;
	
#4; i1=1; i2=1;
#4; i1=1; i2=0;
#4; i1=0; i2=1;
#4; i1=0; i2=0;

#100 $finish;

$dumpfile("text.vcd");
$dumpvars;
end

endmodule

