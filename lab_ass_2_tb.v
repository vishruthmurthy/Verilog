module lab_ass_2_tb;

reg A,B,C,D;
wire F;

lab_ass_2 DUT (A,B,C,D,F);

initial
begin
    A=0; B=0; C=0; D=0;
#5;    A=0; B=0; C=0; D=1;
#5;    A=0; B=0; C=1; D=0;
#5;    A=0; B=0; C=1; D=1;
#5;    A=0; B=1; C=0; D=0;
#5;    A=0; B=1; C=0; D=1;
#5;    A=0; B=1; C=1; D=0;
#5;    A=0; B=1; C=1; D=1;
#5;    A=1; B=0; C=0; D=0;
#5;    A=1; B=0; C=0; D=1;
#5;    A=1; B=0; C=1; D=0;
#5;    A=1; B=0; C=1; D=1;
#5;    A=1; B=1; C=0; D=0;
#5;    A=1; B=1; C=0; D=1;
#5;    A=1; B=1; C=1; D=0;
#5;    A=1; B=1; C=1; D=1;
end
endmodule
