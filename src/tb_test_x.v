`include "../src/test_x.v"
module tb_test_x;
  reg clk;
  reg a;
  reg[31:0] i;

  test_x text_x(.clk(clk), .a(a), .b(b));

  always #1 clk = ~clk;

  initial begin
    clk = 'b0;
    for(i = 0; i < 10; i= i + 1) begin
      @(posedge clk);
      $display("Value of b=0x%x", b);
    end
    $finish;
  end
endmodule

