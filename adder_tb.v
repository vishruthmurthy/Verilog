module adder_tb;

	reg a,b,c;	
	wire sum,carry;

addertask DUT (a,b,c,sum,carry);

	initial
	begin

			for(i=0;i<16;i++) begin
			 a<=i;
				for(j=0;j<16;j++) begin
				 b<=j;
					for(k=0;k<2;k++) begin
				 	 c<=k;
					 #10
						 assert(sum==a+b+c) 
							$display("Test passed");
						 else begin
						  	$error("Error- Sum is wrong");
							$stop;
						 end
					end
				end
			end
	end

initial 
 $monitor ($time,"ns a=%d, b=%d, c=%b, sum=%d", a,b,c,sum);
endmodule


