module mux8to1_tb;

    reg [7:0] in;
    reg [2:0] sel;
    wire out;

    mux8to1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("mux8to1_tb.vcd");
        $dumpvars;

        in = 8'b10101010;
        sel = 0;
        #100;

        sel = 1;
        #100;

        sel = 2;
        #100;

        sel = 3;
        #100;

        sel = 4;
        #100;

        sel = 5;
        #100;

        sel = 6;
        #100;

        sel = 7;
        #100;

        $finish;
    end

endmodule
