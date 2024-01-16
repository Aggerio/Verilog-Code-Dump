module half_subtractor(input a, input b, output difference, output borrow);
assign difference = a ^b;
assign borrow = (~a) & b;
endmodule;


module full_subtractor(input a, input b, input c, output difference, output borrow);
wire x , y, z;
half_subtractor h1(a,b,x, y);
half_subtractor h2 (x, c, difference, z);
assign borrow = y | z;
endmodule
