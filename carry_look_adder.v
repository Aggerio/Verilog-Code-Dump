module CarryLookAheadAdder(
 input [3:0]A, B,
 input Cin,
 output [3:0] S,
 output Cout
);
 wire [3:0] Ci;
 
 assign Ci[0] = Cin;
 assign Ci[1] = (A[0] & B[0]) | ((A[0]^B[0]) & Ci[0]);
 assign Ci[2] = (A[1] & B[1]) | ((A[1]^B[1]) & ((A[0] & B[0]) |
((A[0]^B[0]) & Ci[0])));
assign Ci[3] = (A[2] & B[2]) | ((A[2]^B[2]) & ((A[1] & B[1]) |
((A[1]^B[1]) & ((A[0] & B[0]) | ((A[0]^B[0]) & Ci[0])))));
assign Cout = (A[3] & B[3]) | ((A[3]^B[3]) & ((A[2] & B[2]) |
((A[2]^B[2]) & ((A[1] & B[1]) | ((A[1]^B[1]) & ((A[0] & B[0]) |
((A[0]^B[0]) & Ci[0])))))));
assign S = A^B^Ci;
endmodule

module CarryLookAheadAdder_TB;
 reg [3:0]A, B;
 reg Cin;
 wire [3:0] S;
 wire Cout;
 wire[4:0] add;
 CarryLookAheadAdder cla(A, B, Cin, S, Cout);

 assign add = {Cout, S};
 initial begin
 $monitor("A = %b: B = %b, Cin = %b --> S = %b, Cout = %b, Addition
= %0d", A, B, Cin, S, Cout, add);
 A = 1; B = 0; Cin = 0; #3;
 A = 2; B = 4; Cin = 1; #3;
 A = 4'hb; B = 4'h6; Cin = 0; #3;
 A = 5; B = 3; Cin = 1;
 end
endmodule
