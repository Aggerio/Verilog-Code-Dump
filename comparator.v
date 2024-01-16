module comparator(a,b,equal,greater,lower);
input [3:0]a;
input [3:0]b;
output reg equal,greater,lower;
always @(a , b)
begin
  if(a<b)
  begin
    equal=0;
    greater=0;
    lower=1;
  end
  else if(a>b)
  begin
    equal=0;
    greater=1;
    lower=0;
  end
  else
  begin
    equal=1;
    greater=0;
    lower=0;
  end
end
endmodule
