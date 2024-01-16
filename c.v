module mux4to1(input[3:0] in, input[1:0] sel, output out);
    assign out = (sel == 0) ? in[0] : (sel == 1) ? in[1] : (sel == 2) ? in[2] : in[3];
endmodule

module prime_detector(input[3:0] in, output out);
//wire[3:0] w1 ={in[1],in[0],in[1]&in[0],~in[1] & in[0]}; 
wire[3:0] w1 ={~in[1] & in[0],in[1]&in[0], in[0], in[1]}; 
wire[1:0] w2 ={in[3], in[2]}; 
mux4to1 m1(w1, w2, out);
endmodule

module test;
reg  A ;
reg  B;
reg  Bin;
reg C;
wire out;

prime_detector p1({A,B,Bin,C}, out);

initial begin 
   A=1'b0;B=1'b0;Bin=1'b0;C=1'b0;
   #10
   A=1'b0;B=1'b0;Bin=1'b0;C=1'b1;
   #10
   A=1'b0;B=1'b0;Bin=1'b1;C=1'b0;
   #10
   A=1'b0;B=1'b0;Bin=1'b1;C=1'b1;
   #10
   A=1'b0;B=1'b1;Bin=1'b0;C=1'b0;
   #10
   A=1'b0;B=1'b1;Bin=1'b0;C=1'b1;
   #10
   A=1'b0;B=1'b1;Bin=1'b1;C=1'b0;
   #10
   A=1'b0;B=1'b1;Bin=1'b1;C=1'b1;
   #10
   A=1'b1;B=1'b0;Bin=1'b0;C=1'b0;
   #10
   A=1'b1;B=1'b0;Bin=1'b0;C=1'b1;
   #10
   A=1'b1;B=1'b0;Bin=1'b1;C=1'b0;
   #10
   A=1'b1;B=1'b0;Bin=1'b1;C=1'b1;
   #10
   A=1'b1;B=1'b1;Bin=1'b0;C=1'b0;
   #10
   A=1'b1;B=1'b1;Bin=1'b0;C=1'b1;
   #10
   A=1'b1;B=1'b1;Bin=1'b1;C=1'b1;
   #10
   A=1'b1;B=1'b1;Bin=1'b1;C=1'b0;

end 
endmodule

