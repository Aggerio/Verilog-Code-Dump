module mux4to1_tb;

    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux4to1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin

        in = 4'b1010;
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
