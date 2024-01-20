//Interface
interface multiplier_intf(input logic clk);
logic [15:0] datain;
logic start;
logic done;
logic eqz, loada, loadb, loadP, clrP, decb;
modport mul_datapath(output eqz,input clk, loada, loadb, loadP, clrP, decb, datain);
modport mul_control(output done, loada, loadb, loadP, clrP, decb,input clk, start ,eqz);
endinterface
