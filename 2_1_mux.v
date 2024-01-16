module mux2to1_beh (
    input [1:0] in,
    input sel,
    output reg out
);
    
always @(sel, in) 
  begin
    if (sel == 0) begin
        out <= in[0];
    end 
    else 
    begin
        out <= in[1];
    end
  end
endmodule

module mux2to1_df (
    input [1:0] in,
    input sel,
    output out
);
 assign out = (~sel & in[0]) |(sel & in[1]);   
endmodule

module mux2to1_str (
    input [1:0] in,
    input sel,
    output out
);
 wire z1, z2, z3;
 not(z1, sel);
 and(z2, z1, in[0]);
 and(z3, sel, in[1]);
 or(out, z2, z3); 

endmodule

module mux_and_str(input[1:0]in, output outp);
mux2to1_str m1([0,in[0]], in[1], outp);
endmodule
