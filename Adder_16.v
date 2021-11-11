`timescale 1ns / 1ps

module Adder_16(
    S, Cout,
    a, b, c,
    Cin
    );
    input [15:0] a, b, c; 
    input Cin;
    output [16:0] S; 
    output Cout;
    
    parameter S_16 = 0;
    
    wire [15:0] cy, S_x;
    wire [16:0] P, G;
    wire [16:0] Gw1, Pw1, Gw2, Pw2, Gw3, Pw3, Gw4, Pw4, Gw5, Gn;
    
    FA F0(a[0], b[0], c[0], cy[0], S_x[0]);
    FA F1(a[1], b[1], c[1], cy[1], S_x[1]);
    FA F2(a[2], b[2], c[2], cy[2], S_x[2]);
    FA F3(a[3], b[3], c[3], cy[3], S_x[3]);
    FA F4(a[4], b[4], c[4], cy[4], S_x[4]);
    FA F5(a[5], b[5], c[5], cy[5], S_x[5]);
    FA F6(a[6], b[6], c[6], cy[6], S_x[6]);
    FA F7(a[7], b[7], c[7], cy[7], S_x[7]);
    FA F8(a[8], b[8], c[8], cy[8], S_x[8]);
    FA F9(a[9], b[9], c[9], cy[9], S_x[9]);
    FA F10(a[10], b[10], c[10], cy[10], S_x[10]);
    FA F11(a[11], b[11], c[11], cy[11], S_x[11]);
    FA F12(a[12], b[12], c[12], cy[12], S_x[12]);
    FA F13(a[13], b[13], c[13], cy[13], S_x[13]);
    FA F14(a[14], b[14], c[14], cy[14], S_x[14]);
    FA F15(a[15], b[15], c[15], cy[15], S_x[15]);
    
    base_logic B0(S_x[0], Cin, P[0], G[0]);
    base_logic B1(S_x[1], cy[0], P[1], G[1]);
    base_logic B2(S_x[2], cy[1], P[2], G[2]);
    base_logic B3(S_x[3], cy[2], P[3], G[3]);
    base_logic B4(S_x[4], cy[3], P[4], G[4]);
    base_logic B5(S_x[5], cy[4], P[5], G[5]);
    base_logic B6(S_x[6], cy[5], P[6], G[6]);
    base_logic B7(S_x[7], cy[6], P[7], G[7]);
    base_logic B8(S_x[8], cy[7], P[8], G[8]);
    base_logic B9(S_x[9], cy[8], P[9], G[9]);
    base_logic B10(S_x[10], cy[9], P[10], G[10]);
    base_logic B11(S_x[11], cy[10], P[11], G[11]);
    base_logic B12(S_x[12], cy[11], P[12], G[12]);
    base_logic B13(S_x[13], cy[12], P[13], G[13]);
    base_logic B14(S_x[14], cy[13], P[14], G[14]);
    base_logic B15(S_x[15], cy[14], P[15], G[15]);
    base_logic B32(S_16, cy[15], P[16], G[16]);
    
    buffer BU01(P[0], S[0]); //S0
    buffer BU02(G[0], Gn[0]);
    
    assign S[1] = P[1] ^ Gn[0]; //S1
    
    grey_cell GR1(G[1], P[1], G[0], Gw1[1]);
    buffer BU1(Gw1[1], Gn[1]);
    assign S[2] = P[2] ^ Gn[1]; //S2
    
    buffer BU2(G[2], Gw1[2]);
    grey_cell GR2(Gw1[2], P[2], Gn[1], Gn[2]);
    assign S[3] = P[3] ^ Gn[2]; //S3
    
    black_cell BL3(G[3], P[3], G[2], P[2], Gw1[3], Pw1[3]);
    grey_cell GR3(Gw1[3], Pw1[3], Gw1[1], Gw2[3]);
    buffer BU3(Gw2[3], Gn[3]);
    assign S[4] = P[4] ^ Gn[3]; //S4
    
    buffer BU4(G[4], Gw1[4]);
    grey_cell GR4(Gw1[4], P[4], Gn[3], Gn[4]);
    assign S[5] = P[5] ^ Gn[4]; //S5
    
    black_cell BL51(G[5], P[5], G[4], P[4], Gw1[5], Pw1[5]);
    black_cell BL52(Gw1[5], Pw1[5], Gw1[3], Pw1[3], Gw2[5], Pw2[5]);
    grey_cell GR5(Gw2[5], Pw2[5], Gn[1], Gw3[5]);
    buffer BU5(Gw3[5], Gn[5]);
    assign S[6] = P[6] ^ Gn[5]; //S6
    
    buffer BU6(G[6], Gw1[6]);
    grey_cell GR6(Gw1[6], P[6], Gn[5], Gn[6]);
    assign S[7] = P[7] ^ Gn[6]; //S7
    
    black_cell BL71(G[7], P[7], G[6], P[6], Gw1[7], Pw1[7]);
    black_cell BL72(Gw1[7], Pw1[7], Gw1[5], Pw1[5], Gw2[7], Pw2[7]);
    grey_cell GR7(Gw2[7], Pw2[7], Gw2[3], Gw3[7]);
    buffer BU7(Gw3[7], Gn[7]);
    assign S[8] = P[8] ^ Gn[7]; //S8
    
    buffer BU8(G[8], Gw1[8]);
    grey_cell GR8(Gw1[8], P[8], Gn[7], Gn[8]);
    assign S[9] = P[9] ^ Gn[8]; //S9
    
    black_cell BL91(G[9], P[9], G[8], P[8], Gw1[9], Pw1[9]);
    black_cell BL92(Gw1[9], Pw1[9], Gw1[7], Pw1[7], Gw2[9], Pw2[9]);
    black_cell BL93(Gw2[9], Pw2[9], Gw2[5], Pw2[5], Gw3[9], Pw3[9]);
    grey_cell GR9(Gw3[9], Pw3[9], Gn[1], Gw4[9]);
    buffer BU9(Gw4[9], Gn[9]);
    assign S[10] = P[10] ^ Gn[9]; //S10
    
    buffer BU10(G[10], Gw1[10]);
    grey_cell GR10(Gw1[10], P[10], Gw4[9], Gn[10]);
    assign S[11] = P[11] ^ Gn[10]; //S11
    
    black_cell BL111(G[11], P[11], G[10], P[10], Gw1[11], Pw1[11]);
    black_cell BL112(Gw1[11], Pw1[11], Gw1[9], Pw1[9], Gw2[11], Pw2[11]);
    black_cell BL113(Gw2[11], Pw2[11], Gw2[7], Pw2[7], Gw3[11], Pw3[11]);
    grey_cell GR11(Gw3[11], Pw3[11], Gn[3], Gw4[11]);
    buffer BU11(Gw4[11], Gn[11]);
    assign S[12] = P[12] ^ Gn[11]; //S12
    
    buffer BU12(G[12], Gw1[12]);
    grey_cell GR12(Gw1[12], P[12], Gw4[11], Gn[12]);
    assign S[13] = P[13] ^ Gn[12]; //S13
    
    black_cell BL131(G[13], P[13], G[12], P[12], Gw1[13], Pw1[13]);
    black_cell BL132(Gw1[13], Pw1[13], Gw1[11], Pw1[11], Gw2[13], Pw2[13]);
    black_cell BL133(Gw2[13], Pw2[13], Gw2[9], Pw2[9], Gw3[13], Pw3[13]);
    grey_cell GR13(Gw3[13], Pw3[13], Gw3[5], Gw4[13]);
    buffer BU13(Gw4[13], Gn[13]);
    assign S[14] = P[14] ^ Gn[13]; //S14
    
    buffer BU14(G[14], Gw1[14]);
    grey_cell GR14(Gw1[14], P[14], Gw4[13], Gn[14]);
    assign S[15] = P[15] ^ Gn[14]; //S15
    
    black_cell BL151(G[15], P[15], G[14], P[14], Gw1[15], Pw1[15]);
    black_cell BL152(Gw1[15], Pw1[15], Gw1[13], Pw1[13], Gw2[15], Pw2[15]);
    black_cell BL153(Gw2[15], Pw2[15], Gw2[11], Pw2[11], Gw3[15], Pw3[15]);
    grey_cell GR15(Gw3[15], Pw3[15], Gw3[7], Gw4[15]);
    buffer BU15(Gw4[15], Gn[15]);
    assign S[16] = P[16] ^ Gn[15]; //S16
    
    buffer BU16(G[16], Gw1[16]);
    grey_cell GR16(Gw1[16], P[16], Gn[15], Cout); //Cout
    
    
//    buffer BU32(G[32], Gw1[32]);
//    grey_cell GR32(Gw1[32], P[32], Gn[31], Cout); //Cout
    
endmodule
