module lab_5_tb;

reg a,b,c;
wire f;

lab_5 DUT (a,b,c,f);

initial

repeat(19)
begin
 a=$random();
 b=$random();
 c=$random();
#4 $display($time,"ns a=%b, b=%b, c=%b, f=%b", a,b,c,f);
end


endmodule
