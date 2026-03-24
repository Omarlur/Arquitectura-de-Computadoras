module S32resta(
    input  [31:0] A,
    input  [31:0] B,
    output [32:0] S_res
);
    assign S_res = A - B;
endmodule
