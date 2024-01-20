//Control Path
module control(multiplier_intf.mul_control cif);
reg [2:0]state;//next_state
parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100;
always @(posedge cif.clk)
begin
case(state)
S0 : if(cif.start) state<= S1;
S1 : state<=S2;
S2 : state<= S3;
S3 : #2 if(cif.eqz) state<=S4;
S4 : state<= S4;
default : state<= S0;
endcase
end
always @(state)
begin
case(state)
S0: begin
cif.loada = 0; cif.loadb = 0; cif.loadP = 0; cif.clrP = 0; cif.decb = 0; cif.done = 0;
end
S1: begin
cif.loada = 1; cif.loadb = 0; cif.loadP = 0; cif.clrP = 0; cif.decb = 0; cif.done = 0;
end
S2: begin
cif.loada = 0; cif.loadb = 1; cif.loadP = 0; cif.clrP = 1; cif.decb = 0; cif.done = 0;
end
S3: begin
cif.loada = 0; cif.loadb = 0; cif.loadP = 1; cif.clrP =0; cif.decb = 1; cif.done = 0;
end
S4: begin
cif.loada = 0; cif.loadb = 0; cif.loadP = 0; cif.clrP = 0; cif.decb = 0; cif.done = 1;
end
default : begin
cif.loada = 0; cif.loadb = 0; cif.loadP = 0; cif.clrP = 0; cif.decb = 0; cif.done = 0;
end
endcase
end
endmodule
