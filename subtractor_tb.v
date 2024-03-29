module subtractor_tb;
reg a, b,c;

wire difference, borrow;

full_subtractor s(a,b,c,difference, borrow);
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
