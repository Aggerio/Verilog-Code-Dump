module jkff(clk,rst,j,k,q,qb);
input clk,rst,j,k;
output reg q,qb;
always@(posedge clk ,rst)
begin
if(rst==1'b0)
begin
q=q;
qb=qb;
end
else if(j==1'b0 && k==1'b0)
begin
q=q;
qb=qb;
end
else if(j==1'b0 && k==1'b1)
begin
q=q;
qb=~q;
end
else if(j==1'b1 && k==1'b0)
begin
q=1'b1;
qb=~q;
end
else if(j==1'b1 && k==1'b1)
begin
q=~q;
qb=~qb;
end
end
endmodule


module tb_jkff;
reg j,k,clk,rst;
wire q,qb;
jkff u1(clk,rst,j,k,q,qb);
initial begin
clk=1'b0;
forever
#5
clk=~clk;
end
initial begin
rst=1'b0;j=1'b0;k=1'b0;
#5 rst=1'b1;j=1'b0;k=1'b1;
#5 j=1'b0;k=1'b1;
#5
$stop();
end
endmodule
