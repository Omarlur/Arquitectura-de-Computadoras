module M_COMPUERTAS (
    input A,
    input B,
    output AND_out,
    output NAND_out,
    output OR_out,
    output NOR_out,
    output NOT_out,
    output XOR_out,
    output XNOR_out
);

    assign AND_out  = A & B;      // AND
    assign NAND_out = ~(A & B);   // NAND
    assign OR_out   = A | B;      // OR
    assign NOR_out  = ~(A | B);   // NOR
    assign NOT_out  = ~A;         // NOT 
    assign XOR_out  = A ^ B;      // XOR
    assign XNOR_out = ~(A ^ B);   // XNOR

endmodule

