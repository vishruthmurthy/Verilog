module addertask (a,b,c,sum,carry);

   input wire [3:0] a,b;
   input wire c;
   output reg [3:0] sum;
   output reg carry;

   always@(a,b,c)
     adder(a,b,c,sum,carry);



     task adder;
       input [3:0] x,y;
       input z;
       output [3:0] s;
       output c;

       
       begin

           sum= x^y^z;
           c= (x&y) |(z&y) |(x&z);

       end
    endtask
endmodule
