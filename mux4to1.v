module mux4to1(input[3:0] in, input[1:0] sel, output out);
    assign out = (sel == 0) ? in[0] : (sel == 1) ? in[1] : (sel == 2) ? in[2] : in[3];
endmodule
