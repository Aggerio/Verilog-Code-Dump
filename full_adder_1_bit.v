module full_adder_1_bit(input a, input b, input c, output sum ,output carry);
wire x,y,z;
half_adder h(a,b,x,y);
half_adder h1(x,c,sum, z);
assign carry = y | z;
endmodule
