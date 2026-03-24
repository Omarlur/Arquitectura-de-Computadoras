module S32and(
    input  [31:0] A,
    input  [31:0] B,
    output [31:0] S_and
);
    assign S_and = A & B;  
endmodule
