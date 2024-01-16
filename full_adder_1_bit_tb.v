module full_adder_1_bit_tb;

reg a,b,c;

wire sum, carry;
full_adder_1_bit f(a,b,c,sum,carry);

initial begin 
  a = 1'b0;b=1'b0;c=1'b0;
  #10
  a = 1'b0;b=1'b0;c=1'b0;
  #10
  a = 1'b0;b=1'b1;c=1'b0;
  #10
  a = 1'b0;b=1'b1;c=1'b0;
  #10
  a = 1'b1;b=1'b0;c=1'b1;
  #10
  a = 1'b1;b=1'b0;c=1'b1;
  #10
  a = 1'b1;b=1'b1;c=1'b1;
  #10
  a = 1'b1;b=1'b1;c=1'b1;
  #10
  $stop;
end
endmodule
