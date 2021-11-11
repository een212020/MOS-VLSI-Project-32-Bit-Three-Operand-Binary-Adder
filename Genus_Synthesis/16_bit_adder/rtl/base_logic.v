`timescale 1ns / 1ps

module base_logic(
    Si, cyi_1, Pi, Gi
    );
    input Si, cyi_1;
    output Pi, Gi;
    
    assign Pi = Si^cyi_1;
    assign Gi = Si&cyi_1;
endmodule
