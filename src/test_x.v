module test_x(clk, a, b);
  input clk;
  input a;
  output b;

  reg b;

  always@(posedge clk)
    if(a)
      b <= 1;
    else
      b <= 0;
endmodule
  
