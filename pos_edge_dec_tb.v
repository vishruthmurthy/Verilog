module tb;

  reg d_in, clk, rst;
  wire d_out;

pos_edge dut (.clk(clk), .rst(rst), .d_in(d_in), .d_out(d_out));

initial begin
clk<= 0;
rst<=0;
#4 rst<=1;
#10 rst<=0;
#100 $finish;
end

always #5 clk = ~clk;

        initial begin
           d_in <= 0; #10;
           d_in <= 0; #10;
           d_in <= 1; #10;
           d_in <= 1; #10;
           d_in <= 1; #10;
           d_in <= 0; #10;
           $finish;
        end

        initial $monitor ($time, "ns clk = %b rst = %b d_in = %b, d_out = %b", clk, rst, d_in, d_out);
 
      
endmodule
