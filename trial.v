module full_subtractor_decoder(A, B,Bin,D, Bout);
input A, B, Bin;
output D, Bout;
wire  D0 = (A & ~B & ~Bin) | (~A & ~B & Bin);
wire  D1 = (A & ~B & Bin) | (~A & B & ~Bin);
wire  D2 = (A & B & ~Bin);
wire  D3 = (A & B & Bin);
wire  D4 = (A & ~B & ~Bin) | (~A & B & Bin);
wire  D5 = (A & ~B & Bin) | (~A & B & ~Bin);
wire  D6 = (A & B & ~Bin);
wire  D7 = (A & B & Bin);


assign D = (D1 | D2 | D4 | D7);
assign Bout = (D1 | D2 | D3 | D7);

endmodule

module full_subtractor_decoder_tb;
 reg A;
 reg B;
 reg Bin;
 
 wire D;
 wire Bout;
 full_subtractor_decoder f1(A,B,Bin, D, Bout);
 initial begin 
   A=1'b0;B=1'b0;Bin=1'b0;
   #10
   A=1'b0;B=1'b0;Bin=1'b1;
   #10
   A=1'b0;B=1'b1;Bin=1'b0;
   #10
   A=1'b0;B=1'b1;Bin=1'b1;
   #10
   A=1'b1;B=1'b0;Bin=1'b0;
   #10
   A=1'b1;B=1'b0;Bin=1'b1;
   #10
   A=1'b1;B=1'b1;Bin=1'b0;
   #10
   A=1'b1;B=1'b1;Bin=1'b1;
   #10
 end
endmodule
