`timescale 1ns / 1ps

module grey_cell(
    Gik, Pik, Gk_1j,  Gij
    );
    input Gik, Gk_1j, Pik;
    output Gij;
    
    assign Gij = Gik | Pik & Gk_1j;
    
endmodule
