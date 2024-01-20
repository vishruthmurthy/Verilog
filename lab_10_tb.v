module d_ff_tb;
 
 reg d,clk,rst,clr;
 wire q,qbar;

  d_ff DUT (d,clk,rst,clr,q,qbar);

initial
begin
 d=0;
 clk=0;
 rst=0;
 clr=0;
end

always #5 clk<=~clk;

initial
begin
//#5 clk<=~clk;
#15 d<=1;
#7 rst=1;
#12 rst=0;
#10 clr=1;
#15 clr=0;
#200 $finish;
end

endmodule

