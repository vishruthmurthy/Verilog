module adder_function (a,b,c,sum,carry);

    input [3:0] a,b;
    input c;
    output [3:0] sum;
    output carry;

    always@(a,b,c)
        add (a,b,c,sum);
        carry_out (a,b,c,carry);


    function add(x,y,z,s)
    input [3:0] x,y;
    input z;
    output [3:0] s;
    output c;

      s= x^y^z;

    function carry_out(x,y,z,c_out)
    input [3:0] x,y;
    input z;
    output c_out;

      c_out= (x&y) |(z&y) | (x&z);

endmodule
