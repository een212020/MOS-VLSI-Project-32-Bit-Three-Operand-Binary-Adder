`timescale 1ns / 1ps

module FA(
    ai, bi, ci, cyi_1, Si
    );
    input ai, bi, ci;
    output wire cyi_1, Si;
    
    assign cyi_1 = ai&bi | bi&ci | ci&ai;
    assign Si = ai^bi^ci;
    
endmodule
