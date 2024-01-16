module pipo(q,in,load,clk,rst);
output [3:0]q;
input load,clk,rst;
input [3:0]in;
reg [3:0]q;
always @ (posedge clk or posedge rst)
begin
if(rst)
q<=4'b0;
else if(load)
q<=in;
else
q<=q;
end
endmodule

module pipo_test;
wire [3:0]q;
reg load,clk,rst;
reg [3:0]in;
pipo p1(q,in,load,clk,rst);
always
#5 clk=~clk;
initial
begin
load=1;clk=0;rst=1;
in=4'b1001;
#10 rst=0;
#10 load=0;
#40 load=1;in=4'b0011;
#10 load=0;
#50 $stop;
end
endmodule
