`timescale 1ns/1ps

module TB_S4Bcomp;

reg  [3:0] A;
reg  [3:0] B;
reg        Cin;
wire [3:0] S;
wire       Cout;

S4Bcomp uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

initial begin
    $monitor("Tiempo=%0t A=%b B=%b Cin=%b | S=%b Cout=%b",
              $time, A, B, Cin, S, Cout);

    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10 A = 4'b0011; B = 4'b0101; Cin = 0;
    #10 A = 4'b1111; B = 4'b0001; Cin = 0;
    #10 A = 4'b1010; B = 4'b0101; Cin = 1;
    #10 $stop;
end

endmodule

