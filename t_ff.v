module t_ff (t,clk,rst,q,qbar);

input t,clk,rst;
output reg q;
output qbar;

assign qbar=~q;

    always@(posedge clk or posedge rst)
        begin
           if (rst)
               q<=0;

           else
               q<=~q;
        end
endmodule
