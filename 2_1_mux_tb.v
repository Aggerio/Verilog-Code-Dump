module mux2to1_tb;

reg [1:0] in;
reg sel;
wire out;

mux2to1 m(in, sel, out);

initial begin 
    in = 2'b10;
    sel = 0;
    #100;

    sel = 1;
    #100;
  $finish;
end 

endmodule
