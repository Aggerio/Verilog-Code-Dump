module sipo(q,si,clk,rst);
output [3:0]q;
input si,clk,rst;
reg [3:0]q;
always @ (posedge clk or posedge rst)
begin
if(rst)
q<=4'b0;
else
q<={si,q[3:1]};
end
endmodule

module sipo_test;
wire [3:0]q;
reg si,clk,rst;
sipo s1(q,si,clk,rst);
always
#5 clk=~clk;
initial
begin
si=0; clk=0;rst=1;
#10 rst=0;
#10 si=1;
#10 si=0;
#10 si=0;
#10 si=1;
#10 si=1;
#50 $stop;
end
endmodule
