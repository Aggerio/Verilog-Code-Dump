module dec4to16(
    input [3:0] sel,
    output reg [15:0] out
);

    wire [7:0] e1, e2;

    mux8to1 m1(sel[2:0], e1);
    mux8to1 m2(sel[2:0], e2);

    always @(sel, out ) begin
        case (sel[3])
            0: out <= e1;
            1: out <= e2;
        endcase
    end

endmodule



module mux4to16_tb;

    reg [3:0] sel;
    wire [15:0] out;

    dec4to16 uut (
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpvars;

        sel = 0;
        #100;

        sel = 1;
        #100;

        sel = 2;
        #100;

        sel = 3;
        #100;

        $finish;
    end
endmodule
