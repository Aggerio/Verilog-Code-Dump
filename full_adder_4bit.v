module full_adder_subtractor_4bit(
    input [3:0] a,
    input [3:0] b,
    input control,
    output [3:0] sum,
    output carry
);

    // Declare the carry wire
    wire c1, c2, c3;

    // Instantiate the full adder modules
    full_adder_1_bit f1(a[0], b[0], control, sum[0], c1);
    full_adder_1_bit f2(a[1], b[1], c1, sum[1], c2);
    full_adder_1_bit f3(a[2], b[2], c2, sum[2], c3);
    full_adder_1_bit f4(a[3], b[3], c3, sum[3], carry);

endmodule

module full_subtractor_4bit(
  input[3:0] a,
  input[3:0] b,
  output [3:0] sum,
  output carry
);


endmodule;
