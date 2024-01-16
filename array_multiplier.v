module array_multiplier(PRODUCT, A, B, clk);
 output reg signed [7:0] PRODUCT;
 input signed [3:0] A, B;
 input clk;
 reg [1:0] temp;
 integer i;
 reg e;
 reg [3:0] B1;
 initial
 begin
 PRODUCT = 8'd0;
 e = 1'b0;
 i = 0;
 B1 = -B;
 end
 always @(posedge clk)
 begin

 temp = { A[i], e };
 case(temp)
 2'd2 : PRODUCT[7:4] = PRODUCT[7:4] + B1;
 2'd1 : PRODUCT[7:4] = PRODUCT[7:4] + B;
 endcase
 PRODUCT = PRODUCT >> 1;
 PRODUCT[7] = PRODUCT[6];
 e=A[i];
 i = i + 1;


 end

endmodule
