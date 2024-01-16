module mealy_seq_nonover(
  input wire clk,
  input wire reset,
  input wire in,
  output wire out
);
  
  reg[1:0] state;

  always @(posedge clk or posedge reset ) begin
    if(reset)
      state <=2'b00;
    else
      case(state)
        2'b00: if(in) state <= 2'b01; else state <=2'b00;
        2'b01: if(in) state <= 2'b10; else state <=2'b00;
        2'b10: if(in) state <= 2'b11; else state <=2'b00;
        2'b11: if(in) state <= 2'b11; else state <=2'b00;
      endcase
    end

    assign out = (state == 2'b11);
endmodule

module tb_mealy_seq_nonover;
reg clk;
reg reset;
reg in;
wire out;

mealy_seq_nonover m1(.clk(clk), .reset(reset), .in(in), .out(out));

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
