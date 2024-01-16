module mux4to1(
    input [3:0] in,
    input [1:0] sel,
    output out
);

    wire [1:0] e1, e2;

    mux2to1 m1(in[3:2], sel[1], e1);
    mux2to1 m2(in[1:0], sel[1], e2);
    mux2to1 m3(e1, sel[0], out);

endmodule


module mux16to1(
    input [15:0] in,
    input [3:0] sel,
    output out
);

    wire [3:0] e1, e2, e3, e4;

    mux4to1 m1(in[15:12], sel[3:2], e1);
    mux4to1 m2(in[11:8], sel[3:2], e2);
    mux4to1 m3(in[7:4], sel[3:2], e3);
    mux4to1 m4(in[3:0], sel[3:2], e4);
    mux4to1 m5(e1, sel[1:0], out);

endmodule
