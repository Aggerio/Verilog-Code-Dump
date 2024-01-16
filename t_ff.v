module tff(T,clk,rst,q,qb);
input T,clk,rst;
output reg q,qb;
always@(posedge clk , rst)
begin
if(rst==1'b0)
begin
q=1'b0;
qb=~q;
end
else if(T==1'b0)
begin
q=q;
qb=~q;
end
else
begin
q=~q;
qb=~qb;
end
end
endmodule

module tb_tff;
reg T,clk,rst;
wire q,qb;
tff u1(T,clk,rst,q,qb);
initial begin
clk=1'b0;
forever
#5
clk=~clk;
end
initial begin
rst=1'b0;T=1'b0;
#5 rst=1'b1;T=1'b0;
#5 T=1'b0;
#5
$stop();
end
endmodule
