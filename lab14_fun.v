module function_test (a,b);

input a,b;

 function compare (input a,input b);
  //integer a,b;

  if(a<b)
   $display($time,"a is smaller than b");

  else if(a>b)
   $display($time,"a is greater than b");

  else
   $display($time,"a and b are equal");
 
 endfunction

initial begin
 compare (10,20);
 compare (10,5);
 compare (10,10);
end

endmodule
