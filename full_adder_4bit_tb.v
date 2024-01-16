module full_adder_subtractor_4bit_tb;

reg [3:0] a;
reg [3:0] b;
reg control;
wire [3:0]sum;
wire carry;

full_adder_4bit f(a, b, sum, carry);

integer i, j;
initial begin
  a = 4'b0000; b = 4'b0000;control=1'b0;
  #10
  a = 4'b1000; b = 4'b1000;control=1'b0;

  #10
  a = 4'b0100; b = 4'b0100;control=1'b0;

  #10
  a = 4'b1100; b = 4'b1100;control=1'b0;

  #10
  a = 4'b0010; b = 4'b0010;control=1'b0;

  #10
  a = 4'b1010; b = 4'b1010;control=1'b0;

  #10
  a = 4'b0110; b = 4'b0110;control=1'b0;

  #10
  a = 4'b1110; b = 4'b1110;control=1'b0;

  #10
  a = 4'b0001; b = 4'b0001;control=1'b1;

  #10
  a = 4'b1001; b = 4'b1001;control=1'b1;

  #10
  a = 4'b0101; b = 4'b0101;control=1'b1;

  #10
  a = 4'b1101; b = 4'b1101;control=1'b1;

  #10
  a = 4'b0011; b = 4'b0011;control=1'b1;

  #10
  a = 4'b1011; b = 4'b1011;control=1'b1;

  #10
  a = 4'b0111; b = 4'b0111;control=1'b1;

  #10
  a = 4'b1111; b = 4'b1111;control=1'b1;

  #10
  $finish;
end

endmodule
