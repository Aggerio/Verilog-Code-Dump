module spec_mux(
  input[3:0] inp,
  input[2:0] sel,
  output reg out
);
always @(inp, sel, out) begin
    case (sel)
        0: out = 0;
        1: out = 0;
        2: out = inp[3];
        3: out = inp[3];
        4: out = inp[3];
        5: out = 0;
        6: out = 1;
        7: out = inp[3];
        default: assign out = inp[0];
    endcase
  end
endmodule


module spec_mux_tb;
reg [3:0] abcd;
reg [2:0] sel;
wire out;

spec_mux m1(abcd, sel, outp);
initial begin 
  abcd = 4'b1001;
  sel = 3'b010;
  #10;
  sel = 3'b001;
  #10;
  sel = 3'b100;
  #10;
  sel = 3'b100;
  #10
  $finish;
end
endmodule
