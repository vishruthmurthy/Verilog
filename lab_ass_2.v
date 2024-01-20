module lab_ass_2 (A,B,C,D,F);

  input A,B,C,D;
  output F;
  wire w1,w2,w3,w4,w5,w6,w7,w8,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23;

nor g1 (w1,D), g2 (w2,w1,w8), g3 (w3,w2,C), g4(w4,w3,w13), g5(w5,w4), g6(w6,w5,w22), g7(F,w6), g8(w7,A), g9(w8,w7,B), g10(w10,C), g11(w11,w10,w14), g12(w12,w11), g13(w13,w12,w19), g14(w14,D), g15(w16,A,B), g16(w15,A,w16), g17(w18,w15,w17), g18(w19,w18), g19(w17,w16,B), g20(w20,A,w23), g21(w21,w20), g22(w22,w21,D), g23(w23,B);

endmodule
