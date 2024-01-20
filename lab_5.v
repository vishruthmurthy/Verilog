module lab_5 (a,b,c,f);

input a,b,c;
output reg f;

always@(*)
begin
case({b,c})
2'b00: f<=1;
2'b01: f<=~a;
2'b10: f<=a;
2'b11: f<=~a;
endcase
end

endmodule
