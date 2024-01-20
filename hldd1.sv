module decoder(en,i1,i2,out);
input logic en,i1,i2;
output logic [3:0] out;

always @(*)
  begin
   if(!en)
    out<=4'b0000;
   else
    case({i1,i2})
     2'b00: out<=4'b0001;
     2'b01: out<=4'b0010;
     2'b10: out<=4'b0100;
     2'b11: out<=4'b1000;
    endcase
   end

endmodule





















