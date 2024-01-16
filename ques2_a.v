module ques2_c(input a, input b, input c, input d, output f);
assign f = (~b & ~d) | (~a & b & ~c) | (a & ~b) | (~c & ~d);
endmodule
