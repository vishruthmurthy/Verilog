module fsm(clk,rst,in,out);
input logic clk,rst,in;
output logic out;

parameter S0=0,S1=1,S2=2,S3=3;
logic PS,NS;

always@(posedge clk) begin
  if(rst)
   NS<=S0;
  else
   PS<=NS;
end

always@(PS,in) begin
  case(PS)
    S0: begin
      if(in==0)
       begin
        NS<=S0;
        out<=0;
       end
      else
       begin
        NS<=S1;
        out<=0;
       end
     end

    S1: begin
      if(in==0)
       begin
        NS<=S2;
        out<=0;
       end
      else
       begin
        NS<=S1;
        out<=0;
       end
     end

    S2: begin
      if(in==0)
       begin
        NS<=S0;
        out<=0;
       end
      else
       begin
        NS<=S3;
        out<=0;
       end
     end

    S3: begin
      if(in==0)
       begin
        NS<=S2;
        out<=1;
       end
      else
       begin
        NS<=S1;
        out<=1;
       end
       end

    default: begin
        NS<=S0;
        out<=0;
	end
  endcase
end
endmodule

