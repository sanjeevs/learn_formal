`include "../src/test_mux.v"
module tb_test_mux;
  reg clk;
  reg [1:0] sel;
  reg[31:0] i;

  test_mux text_mux(.clk(clk), .i0(0), .i1(0), .i2(0), .i3(0), .i4(0), .b(b));

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

