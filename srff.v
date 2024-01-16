module srff(clk,rst,s,r,q,qb);
input clk,rst,s,r;
output reg q,qb;
always@(posedge clk , rst)
begin
if(rst==1'b0)
begin
q=q;
qb=qb;
end
else if(s==1'b0 && r==1'b0)
begin
q=q;
qb=qb;
end
else if(s==1'b0 && r==1'b1)
begin
q=q;
qb= ~q;
end
else if(s==1'b1 && r==1'b0)
begin
q=1'b1;
qb=~q;
end
else if(s==1'b1 && r==1'b1)
begin
q=1'bX;qb=~q;
end
end
endmodule

module tb_srff;
reg s,r,clk,rst;
wire q,qb;
srff u1(clk,rst,s,r,q,qb);
initial begin
clk=1'b0;
forever
#5
clk=~clk;
end
initial begin
rst=1'b0;s=1'b0;r=1'b0;
#5 rst=1'b1;s=1'b0;r=1'b1;
#5 s=1'b0;r=1'b1;
#5
$stop();
end
endmodule
