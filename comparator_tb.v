module tb_comparator;
reg [3:0]a; 
reg [3:0]b;
wire equal,greater,lower;
comparator u1(a,b,equal,greater,lower);
initial begin
a=4'b0000;
b=4'b0000;
#100
a=4'b0010;
b=4'b0001;
#100
$finish;
end
endmodule
