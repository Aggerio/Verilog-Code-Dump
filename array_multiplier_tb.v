module array_multiplier_tb;

reg clk;
reg signed [3:0] A, B;
wire signed [7:0] PRODUCT;

array_multiplier dut(PRODUCT, A, B, clk);

initial begin
  #10 $dumpfile("array_multiplier.vcd");
  #10 $dumpvars(dumpfile, dut);
end

always #10 begin
  clk = ~clk;
  A = $random_range(-16, 16);
  B = $random_range(-16, 16);
  #10;
end
endmodule
module booth_multiplier_tb;

reg signed [3:0] A, B;
wire signed [7:0] PRODUCT;

booth_multiplier dut(PRODUCT, A, B);

initial begin
end

always #10 begin
  A = $random_range(-8, 8);
  B = $random_range(-8, 8);
  #10;
end

endmodule
