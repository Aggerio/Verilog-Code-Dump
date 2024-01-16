module moore_seq_nonover(
  input wire clk,
  input wire reset,
  input wire in,
  output wire out
);
  
  reg[2:0] state;

  always @(posedge clk ) begin
    if(reset)
      state <=3'b000;
    else
      case(state)
        3'b000: if(in) state <= 3'b001; else state <=3'b000;
        3'b001: if(in) state <= 3'b011; else state <=3'b000;
        3'b011: if(in) state <= 3'b101; else state <=3'b000;
        3'b101: if(in) state <= 3'b110; else state <=3'b000;
        3'b110: if(in) state <= 3'b111; else state <=3'b000;
        3'b111: state <=3'b000;
      endcase
    end

    assign out = (state == 3'b110) || (state == 3'b111);
endmodule

module tb_moore_seq_nonover;
reg clk;
reg reset;
reg in;
wire out;

moore_seq_nonover m1(.clk(clk), .reset(reset), .in(in), .out(out));

initial begin
  clk = 0;
  reset = 1;
  in = 0;

  reset = 0;

  #10 reset = 1;
  in = 1;

  #10 in = 0;
  in = 1;
  #10 in = 1;
  in = 0;
  #10 in = 1;
  in = 1;
  #10 in = 0;
  in = 0;
  $stop;
end
  always #5 clk = ~clk;
endmodule
