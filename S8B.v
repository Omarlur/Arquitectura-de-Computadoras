module S8B (
    input  [7:0] A,
    input  [7:0] B,
    input        Cin,
    output [7:0] S,
    output       Cout
);

wire C1;

S4Bcomp U1 (
    .A(A[3:0]),
    .B(B[3:0]),
    .Cin(Cin),
    .S(S[3:0]),
    .Cout(C1)
);

S4Bcomp U2 (
    .A(A[7:4]),
    .B(B[7:4]),
    .Cin(C1),
    .S(S[7:4]),
    .Cout(Cout)
);

endmodule

