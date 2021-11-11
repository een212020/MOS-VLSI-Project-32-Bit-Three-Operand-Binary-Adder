`timescale 1ns / 1ps

module buffer(
    in, out
    );
    input in;
    output reg out;
    
    always @(in)
        out <= in;
endmodule
