`timescale 1ns / 1ps

`define WIDTH 4

module tb_adder();

    reg [`WIDTH - 1 : 0] a;
    reg [`WIDTH - 1 : 0] b;
    reg [`WIDTH - 1 : 0] c;
    reg [`WIDTH - 1 : 0] d;
    
    wire [`WIDTH - 1 + 2: 0] e;
    
    adder #
        (
            .WIDTH(`WIDTH)
        ) dumy (
        
            .a(a[`WIDTH - 1 : 0]),
            .b(b[`WIDTH - 1 : 0]),
            .c(c[`WIDTH - 1 : 0]),
            .d(d[`WIDTH - 1 : 0]),
            .e(e)
        );

    initial  begin
        a = {`WIDTH{1'b1}};
        b = {`WIDTH{1'b1}};
        c = {`WIDTH{1'b1}};
        d = {`WIDTH{1'b1}};
    end

    initial  begin
        $display("a: %d, b: %d, c: %d, d: %d, e: %d", a, b, c, d, e);
    end

endmodule /* tb_adder */