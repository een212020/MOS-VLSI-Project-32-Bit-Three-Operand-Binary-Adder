`timescale 1ns / 1ps

module thirty_two_bit_adder(
    S, Cout,
    a, b, c,
    Cin
    );
    input [31:0] a, b, c; 
    input Cin;
    output [32:0] S; 
    output Cout;
    
    parameter S_32 = 0;
    
    wire [31:0] cy, S_x;
    wire [32:0] P, G;
    wire [32:0] Gw1, Pw1, Gw2, Pw2, Gw3, Pw3, Gw4, Pw4, Gw5, Gn;
    
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
    FA F16(a[16], b[16], c[16], cy[16], S_x[16]);
    FA F17(a[17], b[17], c[17], cy[17], S_x[17]);
    FA F18(a[18], b[18], c[18], cy[18], S_x[18]);
    FA F19(a[19], b[19], c[19], cy[19], S_x[19]);
    FA F20(a[20], b[20], c[20], cy[20], S_x[20]);
    FA F21(a[21], b[21], c[21], cy[21], S_x[21]);
    FA F22(a[22], b[22], c[22], cy[22], S_x[22]);
    FA F23(a[23], b[23], c[23], cy[23], S_x[23]);
    FA F24(a[24], b[24], c[24], cy[24], S_x[24]);
    FA F25(a[25], b[25], c[25], cy[25], S_x[25]);
    FA F26(a[26], b[26], c[26], cy[26], S_x[26]);
    FA F27(a[27], b[27], c[27], cy[27], S_x[27]);
    FA F28(a[28], b[28], c[28], cy[28], S_x[28]);
    FA F29(a[29], b[29], c[29], cy[29], S_x[29]);
    FA F30(a[30], b[30], c[30], cy[30], S_x[30]);
    FA F31(a[31], b[31], c[31], cy[31], S_x[31]);
    
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
    base_logic B16(S_x[16], cy[15], P[16], G[16]);
    base_logic B17(S_x[17], cy[16], P[17], G[17]);
    base_logic B18(S_x[18], cy[17], P[18], G[18]);
    base_logic B19(S_x[19], cy[18], P[19], G[19]);
    base_logic B20(S_x[20], cy[19], P[20], G[20]);
    base_logic B21(S_x[21], cy[20], P[21], G[21]);
    base_logic B22(S_x[22], cy[21], P[22], G[22]);
    base_logic B23(S_x[23], cy[22], P[23], G[23]);
    base_logic B24(S_x[24], cy[23], P[24], G[24]);
    base_logic B25(S_x[25], cy[24], P[25], G[25]);
    base_logic B26(S_x[26], cy[25], P[26], G[26]);
    base_logic B27(S_x[27], cy[26], P[27], G[27]);
    base_logic B28(S_x[28], cy[27], P[28], G[28]);
    base_logic B29(S_x[29], cy[28], P[29], G[29]);
    base_logic B30(S_x[30], cy[29], P[30], G[30]);
    base_logic B31(S_x[31], cy[30], P[31], G[31]);
    base_logic B32(S_32, cy[31], P[32], G[32]);
    
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
    grey_cell GR16(Gw1[16], P[16], Gw4[15], Gn[16]);
    assign S[17] = P[17] ^ Gn[16]; //S17
    
    black_cell BL171(G[17], P[17], G[16], P[16], Gw1[17], Pw1[17]);
    black_cell BL172(Gw1[17], Pw1[17], Gw1[15], Pw1[15], Gw2[17], Pw2[17]);
    black_cell BL173(Gw2[17], Pw2[17], Gw2[13], Pw1[13], Gw3[17], Pw3[17]);
    black_cell BL174(Gw3[17], Pw3[17], Gw3[9], Pw3[9], Gw4[17], Pw4[17]);
    grey_cell GR17(Gw4[17], Pw4[17], Gn[1], Gw5[17]);
    buffer BU17(Gw5[17], Gn[17]);
    assign S[18] = P[18] ^ Gn[17]; //S18
    
    buffer BU18(G[18], Gw1[18]);
    grey_cell GR18(Gw1[18], P[18], Gw5[17], Gn[18]);
    assign S[19] = P[19] ^ Gn[18]; //S19
    
    black_cell BL191(G[19], P[19], G[18], P[18], Gw1[19], Pw1[19]);
    black_cell BL192(Gw1[19], Pw1[19], Gw1[17], Pw1[17], Gw2[19], Pw2[19]);
    black_cell BL193(Gw2[19], Pw2[19], Gw2[15], Pw1[19], Gw3[19], Pw3[19]);
    black_cell BL194(Gw3[19], Pw3[19], Gw3[11], Pw3[11], Gw4[19], Pw4[19]);
    grey_cell GR19(Gw4[19], Pw4[19], Gn[3], Gw5[19]);
    buffer BU19(Gw5[19], Gn[19]);
    assign S[20] = P[20] ^ Gn[19]; //S20
    
    buffer BU20(G[20], Gw1[20]);
    grey_cell GR20(Gw1[20], P[20], Gw5[19], Gn[20]);
    assign S[21] = P[21] ^ Gn[20]; //S21
    
    black_cell BL211(G[21], P[21], G[20], P[20], Gw1[21], Pw1[21]);
    black_cell BL212(Gw1[21], Pw1[21], Gw1[19], Pw1[19], Gw2[21], Pw2[21]);
    black_cell BL213(Gw2[21], Pw2[21], Gw2[17], Pw1[17], Gw3[21], Pw3[21]);
    black_cell BL214(Gw3[21], Pw3[21], Gw3[13], Pw3[13], Gw4[21], Pw4[21]);
    grey_cell GR21(Gw4[21], Pw4[21], Gn[5], Gw5[21]);
    buffer BU21(Gw5[21], Gn[21]);
    assign S[22] = P[22] ^ Gn[21]; //S22
    
    buffer BU22(G[22], Gw1[22]);
    grey_cell GR22(Gw1[22], P[22], Gw5[21], Gn[22]);
    assign S[23] = P[23] ^ Gn[22]; //S23
    
    black_cell BL231(G[23], P[23], G[22], P[22], Gw1[23], Pw1[23]);
    black_cell BL232(Gw1[23], Pw1[23], Gw1[21], Pw1[21], Gw2[23], Pw2[23]);
    black_cell BL233(Gw2[23], Pw2[23], Gw2[19], Pw1[19], Gw3[23], Pw3[23]);
    black_cell BL234(Gw3[23], Pw3[23], Gw3[15], Pw3[15], Gw4[23], Pw4[23]);
    grey_cell GR23(Gw4[23], Pw4[23], Gn[7], Gw5[23]);
    buffer BU23(Gw5[23], Gn[23]);
    assign S[24] = P[24] ^ Gn[23]; //S24
    
    buffer BU24(G[24], Gw1[24]);
    grey_cell GR24(Gw1[24], P[24], Gw5[23], Gn[24]);
    assign S[25] = P[25] ^ Gn[24]; //S25
    
    black_cell BL251(G[25], P[25], G[24], P[24], Gw1[25], Pw1[25]);
    black_cell BL252(Gw1[25], Pw1[25], Gw1[23], Pw1[23], Gw2[25], Pw2[25]);
    black_cell BL253(Gw2[25], Pw2[25], Gw2[21], Pw1[21], Gw3[25], Pw3[25]);
    black_cell BL254(Gw3[25], Pw3[25], Gw3[17], Pw3[17], Gw4[25], Pw4[25]);
    grey_cell GR25(Gw4[25], Pw4[25], Gw4[9], Gw5[25]);
    buffer BU25(Gw5[25], Gn[25]);
    assign S[26] = P[26] ^ Gn[25]; //S26
    
    buffer BU26(G[26], Gw1[26]);
    grey_cell GR26(Gw1[26], P[26], Gw5[25], Gn[26]);
    assign S[27] = P[27] ^ Gn[26]; //S27
    
    black_cell BL271(G[27], P[27], G[26], P[26], Gw1[27], Pw1[27]);
    black_cell BL272(Gw1[27], Pw1[27], Gw1[25], Pw1[25], Gw2[27], Pw2[27]);
    black_cell BL273(Gw2[27], Pw2[27], Gw2[23], Pw1[23], Gw3[27], Pw3[27]);
    black_cell BL274(Gw3[27], Pw3[27], Gw3[19], Pw3[19], Gw4[27], Pw4[27]);
    grey_cell GR27(Gw4[27], Pw4[27], Gw4[11], Gw5[27]);
    buffer BU27(Gw5[27], Gn[27]);
    assign S[28] = P[28] ^ Gn[27]; //S28
    
    buffer BU28(G[28], Gw1[28]);
    grey_cell GR28(Gw1[28], P[28], Gw5[27], Gn[28]);
    assign S[29] = P[29] ^ Gn[28]; //S29
    
    black_cell BL291(G[29], P[29], G[28], P[29], Gw1[29], Pw1[29]);
    black_cell BL292(Gw1[29], Pw1[29], Gw1[27], Pw1[27], Gw2[29], Pw2[29]);
    black_cell BL293(Gw2[29], Pw2[29], Gw2[25], Pw1[25], Gw3[29], Pw3[29]);
    black_cell BL294(Gw3[29], Pw3[29], Gw3[21], Pw3[21], Gw4[29], Pw4[29]);
    grey_cell GR29(Gw4[29], Pw4[29], Gw4[13], Gw5[29]);
    buffer BU29(Gw5[29], Gn[29]);
    assign S[30] = P[30] ^ Gn[29]; //S30
    
    buffer BU30(G[30], Gw1[30]);
    grey_cell GR30(Gw1[30], P[30], Gw5[29], Gn[30]);
    assign S[31] = P[31] ^ Gn[30]; //S31
       
    black_cell BL311(G[31], P[31], G[30], P[30], Gw1[31], Pw1[31]);
    black_cell BL312(Gw1[31], Pw1[31], Gw1[27], Pw1[27], Gw2[31], Pw2[31]);
    black_cell BL313(Gw2[31], Pw2[31], Gw2[25], Pw1[25], Gw3[31], Pw3[31]);
    black_cell BL314(Gw3[31], Pw3[31], Gw3[21], Pw3[21], Gw4[31], Pw4[31]);
    grey_cell GR31(Gw4[31], Pw4[31], Gw4[15], Gw5[31]);
    buffer BU31(Gw5[31], Gn[31]);
    assign S[32] = P[32] ^ Gn[31]; //S28   
    
    buffer BU32(G[32], Gw1[32]);
    grey_cell GR32(Gw1[32], P[32], Gn[31], Cout); //Cout
    
endmodule
