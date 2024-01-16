module alu (
  input [31:0] a, b,
  input [3:0] sel,
  output reg [31:0] result,
  output reg carryout
);

always @(*) begin
  case (sel)
    0: result = a + b; // Addition
    1: result = a - b; // Subtraction
    2: result = a & b; // AND
    3: result = a | b; // OR
    4: result = a ^ b; // XOR
    5: result = ~a; // NOT
    6: result = a << b; // Left shift
    7: result = a >> b; // Right shift
    8: result = a * b; // Multiplication
    9: result = a / b; // Division
    default: result = 0; // Invalid operation
  endcase
end

always @(*) begin
  if (result[31]) begin
    carryout = 1;
  end else begin
    carryout = 0;
  end
end

endmodule

module alu_tb;

reg [31:0] a, b;
reg [3:0] sel;
wire [31:0] result;
wire carryout;

alu dut (a, b, sel, result, carryout);

initial begin
end

always #10 begin
  a = 32;
  b = 32;
  sel = 0;
  #10;
end

endmodule
