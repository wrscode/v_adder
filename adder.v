`timescale 1ns / 1ps

    module adder #
    (
        parameter integer WIDTH = 2
    )(
        input wire [WIDTH - 1 : 0] a,
        input wire [WIDTH - 1 : 0] b,
        input wire [WIDTH - 1 : 0] c,
        input wire [WIDTH - 1 : 0] d,
        
        output wire [WIDTH - 1 + 2 : 0] e
    );

    assign e = a + b + c + d;
    
    endmodule /* adder */