`timescale 1ns / 1ps

module four_bit_adder(
    S, Cout,
    a, b, c,
    Cin
    );
    input [3:0] a, b, c; 
    input Cin;
    output [4:0] S; 
    output Cout;
    
    reg S_4 = 0;
    
    wire [3:0]cy;
    wire [4:0] S_x, P, G;
    wire G00, G100, G10, P22;
    
    FA F0(a[0], b[0], c[0], cy[0], S_x[0]);
    FA F1(a[1], b[1], c[1], cy[1], S_x[1]);
    FA F2(a[2], b[2], c[2], cy[2], S_x[2]);
    FA F3(a[3], b[3], c[3], cy[3], S_x[3]);
    
    base_logic B0(S_x[0], Cin, P[0], G[0]);
    base_logic B1(S_x[1], cy[0], P[1], G[1]);
    base_logic B2(S_x[2], cy[1], P[2], G[2]);
    base_logic B3(S_x[3], cy[2], P[3], G[3]);
    base_logic B4(S_4, cy[3], P[4], G[4]);
    
    buffer BU0(P[0], S[0]); //S0
    buffer BU1(G[0], G00);
    
    assign S[1] = P[1] ^ G00; //S1
    
    grey_cell GR0(G[1], G[0], P[1], G100);
    buffer BU2(G100, G10);
    buffer BU3(P[2], P22);
    assign S[2] = P22 ^ G10; //S2
    
    grey_cell GR1(G[2], P22, G10, Cout); //Cout
    
endmodule
