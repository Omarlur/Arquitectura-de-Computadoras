module S32or(
    input  [31:0] A,
    input  [31:0] B,
    output [31:0] S_or
);
    assign S_or = A | B; 
endmodule
