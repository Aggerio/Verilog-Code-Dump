module halfadder(
  input A,
  input B,
  output S,
  output Cout
);

xor(S, A, B);
and(Cout, A, B);

endmodule


module fulladder(A,B,C,S,Cout);
input A,B,C;
output S,Cout;
wire t1,t2,t3;
halfadder f1(A,B,t1,t2);
halfadder f2(C,t1,S,t3);
 or(Cout,t2,t3);
endmodule
module addsub(
 input [3:0] A,
 input [3:0] B,
 input mode,
 output [3:0] S,
 output Cout
);
 wire [2:0] c;
 wire t1, t2, t3, t4;
 xor x1(t1,mode,B[0]);
 xor x2(t2,mode,B[1]);
 xor x3(t3,mode,B[2]);
 xor x4(t4,mode,B[3]);
 fulladder x5(A[0],t1,mode,S[0],c[0]);
 fulladder x6(A[1],t2,c[0],S[1],c[1]);
 fulladder x7(A[2],t3,c[1],S[2],c[2]);
 fulladder x8(A[3],t4,c[2],S[3],Cout);
endmodule

module addsub_tb();
reg [3:0]A,B;
reg mode;
wire [3:0]S;
wire Cout;
addsub x9(A,B,mode,S,Cout);
initial
begin
A=4'b0000 ; B=4'b0000;mode=0;
#10 A=4'b0000 ; B=4'b0000;mode=0;
#10 A=4'b0001 ; B=4'b1001;
#10 A=4'b1001 ; B=4'b1100;mode=1;
#10 A=4'b1010 ; B=4'b0101;
#10 $finish;
end
endmodule
