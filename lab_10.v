module d_ff (d,clk,rst,clr,q,qbar);

 input d,clk,rst,clr;
 output reg q;
 output qbar;

  assign qbar=~q;

   always@(posedge clk or posedge clr)
   begin
    
    if (rst)
     q<=0;
    else if (clr)
     q<=0;
    else
     q<=d;

   end

endmodule
