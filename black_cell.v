`timescale 1ns / 1ps

module black_cell(
    Gik, Pik, Gk_1j, Pk_1j, Gij, Pij
    );
    input Gik, Gk_1j, Pik, Pk_1j;
    output Gij, Pij;
    
    assign Gij = Gik | Pik & Gk_1j;
    assign Pij = Pik & Pk_1j;
endmodule
