module seq_1101(
                input       clk,
                input wire  reset,
                input wire  in,
                output wire out
                )
  reg[2:0] state;


   always @(posedge clk) begin
      if(reset) state <= 3'b000;

      else
        case(state)
          3'b000: if(in) state <=3'b001; else state <= 3'b000;

   end

endmodule
