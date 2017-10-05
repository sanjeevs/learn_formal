module test_mux(clk, i0,i1,i2,i3,i4,sel, b);
  input clk;
  input i0;
  input i1;
  input i2;
  input i3;
  input i4;
  input [2:0] sel;
  output b;
  
  reg b;
  reg a;

  always@(sel or i0 or i1 or i2 or i3 or i4) begin
    case(sel)
      0: a = i0;
      1: a = i1;
      2: a = i2;
      3: a = i3;
      4: a = i4;
    endcase
  end

  always@(posedge clk)
    if(a)
      b <= 1;
    else
      b <= 0;
endmodule
