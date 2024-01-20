module comparator_4_tb;

reg [3:0]a,b;
wire y_e,y_g,y_l;

comparator_4 DUT (a,b,y_e,y_g,y_l);

initial

repeat(10)
begin
//a= $random();
//b= $random();
a= 4'b0000;
b= 4'b0000;

#5 a= 4'b0001; b= 4'b1000;

#5 a= 4'b1001; b= 4'b0000;

#5 $display("a=%d,b=%d,y_e=%d,y_g=%d,y_l=%d",a,b,y_e,y_g,y_l);

//#100 $finish;

end

endmodule
