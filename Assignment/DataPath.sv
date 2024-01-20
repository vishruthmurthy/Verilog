module datapath(multiplier_intf.mul_datapath dif);
logic [15:0]x, y, z, out;
PIPO1 P1(x, dif.clk, dif.loada, dif.datain);
PIPO2 P2(y, dif.clk, dif.loadP, dif.clrP, z);
ADD A(z, x, y);
COUNT CNT(out, dif.clk, dif.loadb, dif.decb, dif.datain);
COMP com(dif.eqz, out);
endmodule
