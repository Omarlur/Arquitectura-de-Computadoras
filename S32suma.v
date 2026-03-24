module S32suma(
    input  [31:0] A,
    input  [31:0] B,
    output [32:0] S_sum
);
    assign S_sum = A + B;
endmodule
