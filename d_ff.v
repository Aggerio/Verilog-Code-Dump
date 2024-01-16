module dff(d,clk,rst,q,qb);
input d,clk,rst;
output reg q,qb;
always@(posedge clk ,rst)
begin
if(rst==1'b0)
begin
q=1'b0;
qb=~q;
end
else if(d==1'b0)
begin
q=1'b0;
qb=~q;
end
else
begin
q=1'b1;
qb=~q;
end
end
endmodule

module tb_dff;
reg d,clk,rst;
wire q,qb;
dff u1(d,clk,rst,q,qb);
initial begin
clk=1'b0;
forever
#5
clk=~clk;
end
initial begin
rst=1'b0;d=1'b0;
#5 rst=1'b1;d=1'b0;
#5 d=1'b0;
#5
$stop();
end
endmodule
