module comparator_4bit(
  input[3:0] b1,
  input[3:0] b2,
  output reg equal,
  output reg greater,
  output reg lesser,
);

wire x0 = b1[0] * b2[0];
wire x1 = b1[1] * b2[1];
wire x2 = b1[2] * b2[2];
wire x3 = b1[3] * b2[3];

always @(*) begin
  equal = x3 * x2 * x1 * x0;
  greater = (b1[3] * ~b2[3]) + (x3 * b1[2] * ~b2[2]) + (x3 * x2 * b1[1] * ~b2[1]) + (x3 * x2 * x1 * b1[0] * ~b2[0]);
  lesser = (b2[3] * ~b1[3]) + (x3 * b2[2] * ~b1[2]) + (x3 * x2 * b2[1] * ~b1[1]) + (x3 * x2 * x1 * b2[0] * ~b1[0]);
end

endmodule

module test_comparator_4bit;
reg [3:0] a;
reg [3:0] b;

wire equal, lesser, greater;

comparator_4bit c(a, b, equal, greater, lesser);

initial begin
  #10
  a = 4'b0000;
  b = 4'b0000;
  #10
  a = 4'b0001;
  b = 4'b0000;
  #10
  a = 4'b0000;
  b = 4'b0001;
  #10
  a = 4'b0001;
  b = 4'b0001;
  #10
  a = 4'b1111;
  b = 4'b1111;
  #10
  a = 4'b1111;
  b = 4'b0000;
  #10
  a = 4'b0000;
  b = 4'b1111;
  $stop;
end

endmodule
