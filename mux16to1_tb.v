module mux16to1_tb;

    reg [15:0] in;
    reg [3:0] sel;
    wire out;

    mux16to1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpvars;

        in = 16'h1234;
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
