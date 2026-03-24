module Sum_instancia8b(
    input  [7:0] A,
    input  [7:0] B,
    output [8:0] S
);
    wire [7:0] c;

    FA fa0(A[0], B[0], 1'b0, S[0], c[0]);
    FA fa1(A[1], B[1], c[0], S[1], c[1]);
    FA fa2(A[2], B[2], c[1], S[2], c[2]);
    FA fa3(A[3], B[3], c[2], S[3], c[3]);
    FA fa4(A[4], B[4], c[3], S[4], c[4]);
    FA fa5(A[5], B[5], c[4], S[5], c[5]);
    FA fa6(A[6], B[6], c[5], S[6], c[6]);
    FA fa7(A[7], B[7], c[6], S[7], S[8]);
endmodule

