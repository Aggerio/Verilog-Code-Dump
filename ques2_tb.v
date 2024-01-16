module ques2_tb;
reg a,b,c,d;
wire f;

ques2_c q(a,b,c,d,f);
initial begin
  a=1'b0;b=1'b0;c=1'b0;d=1'b0;
   #10
  a=1'b1;b=1'b0;c=1'b0;d=1'b0;
   #10
  a=1'b0;b=1'b1;c=1'b0;d=1'b0;
   #10
  a=1'b1;b=1'b1;c=1'b0;d=1'b0;
   #10
  a=1'b0;b=1'b0;c=1'b1;d=1'b0;
   #10
  a=1'b1;b=1'b0;c=1'b1;d=1'b0;
   #10
  a=1'b0;b=1'b1;c=1'b1;d=1'b0;
   #10
  a=1'b1;b=1'b1;c=1'b1;d=1'b0;
   #10
  a=1'b0;b=1'b0;c=1'b0;d=1'b1;
   #10
  a=1'b1;b=1'b0;c=1'b0;d=1'b1;
   #10
  a=1'b0;b=1'b1;c=1'b0;d=1'b1;
   #10
  a=1'b1;b=1'b1;c=1'b0;d=1'b1;
   #10
  a=1'b0;b=1'b0;c=1'b1;d=1'b1;
   #10
  a=1'b1;b=1'b0;c=1'b1;d=1'b1;
   #10
  a=1'b0;b=1'b1;c=1'b1;d=1'b1;
   #10
  a=1'b1;b=1'b1;c=1'b1;d=1'b1;
   #10
  $finish;
end
endmodule
