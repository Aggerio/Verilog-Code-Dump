module siso(so,si,clk,rst);
output reg so;
input si,clk,rst;
reg [3:0]q;
always @ (posedge clk or posedge rst)
begin
if(rst)
q<=4'b0;
else
q<={si,q[3:1]};
assign so=q[0];
end
endmodule


module siso_test;
wire so;
reg si,clk,rst;
siso s1(so,si,clk,rst);
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
