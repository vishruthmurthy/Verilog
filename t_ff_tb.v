module t_ff_tb;

reg t,clk,rst;
wire q,qbar;

t_ff DUT (t,clk,rst,q,qbar);

initial 
begin
clk=0;
t=0;
rst=0;
end

always #5 clk=~clk;

initial
begin
#5; t=1;
#5; t=1; rst=1;
#5; t=1; rst=0;
#5; t=1;
#5; t=1; rst=1;
#5; t=1; 
#5; t=1; rst=0;

$finish;

end

endmodule

