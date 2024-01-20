// pattern detection of 101 and 011 using mixed machine (moore machine)

module multi_pattern_fsm (clk, rst, in, out, out_pattern);		// to detect two patterns i.e. 011 and 1010 simultaneously

input clk, rst, in;							// variable in is to define the input sequence
output reg out;								// variable out goes high if the patter is detected
output reg [4:0] out_pattern;						// to check the current pattern that has been detected

parameter S0= 0, S1= 1, S2= 2, S3= 3, S4= 4, S5= 5, S6= 6, S7= 7; 	// 7 states
reg [2:0] PS, NS;							// to define the present state and the next state


always @(posedge clk or posedge rst)					// procedural block reset the present state if rst is high 

	begin 
	 if (rst) PS <= S0;
	 else PS<= NS;							// if the rst is not high then the present state should go to the next state
	end

always @(PS, in)							// procedural block to be executed when either the PS or the input changes

case (PS)

	S0:
	begin

		if (in==0)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S1;
		   //out_pattern<= 5'b00000;
		   out<= 0;
		 end 

		else
		 begin
		   NS<= S4;
		   //out_pattern<= 5'b10000;				// if input is 1 then the next state is S4 and the pattern detected is 1000 i.e. 0 is received at i/p
		   out<= 0;
		 end 

	end


	S1:
	begin

		if (in==1)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S2;
		   //out_pattern<= 5'b00001;
		   out<= 0;
		 end 

		else
		 begin
		   NS<= S1;
		   //out_pattern<= 5'b00000;				// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		   out<= 0;
		 end 

	end

	S2:
	begin

		if (in==1)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S3;
		   //out_pattern<= 5'b00011;
		   out<= 0;
		 end 

		else
		 begin
		   NS<= S5;
		   //out_pattern<= 5'b00010;				// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		   out<= 0;
		 end 

	end

	S3:
	begin

		if (in==0)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S5;
		   //out_pattern<= 5'b00110;
		   out<= 1;
		 end 

		else
		 begin
		   NS<= S4;
		   //out_pattern<= 5'b00111;				// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		   out<= 1;
		 end 

	end

	S4:
	begin

		if (in==1)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S4;
		   //out_pattern<= 5'b00000;   //check
		   out<= 0;
		 end 

		else
		 begin
		   NS<= S5;
		   //out_pattern<= 5'b10000;  //check the pattern		// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		   out<= 0;
		 end 

	end

	S5:
	begin

		if (in==1)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S6;
		   //out_pattern<= 5'b00101;   // check
		   out<= 0;
		 end 

		else
		 begin
		   NS<= S1;
		   //out_pattern<= 5'b00000;   //check			// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		   out<= 0;
		 end 

	end

	S6:
	begin

		if (in==0)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S5;
		   //out_pattern<= 5'b01010;   //check
		   out<= 1;
		 end 

		else
		 begin
		   NS<= S3;
		   //out_pattern<= 5'b01011;   //check			// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		   out<= 1;
		 end 

	end

	/*S7:
	begin

		if (in==0)						// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		 begin
		   NS<= S1;
		   out_pattern<= 5'b10100;   //check
		   out<= 0;
		 end 

		else
		 begin
		   NS<= S6;
		   out_pattern<= 5'b10101;   //check			// if input is 0 then the next state is S1 and the pattern detected is 0000 i.e. 0 is received at i/p
		   out<= 0;
		 end 

	end*/

	default:
	begin

		   NS<= S1;
		   //out_pattern<= 5'b00000;   //check
		   out<= 0;

	end


endcase

endmodule

