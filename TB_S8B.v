`timescale 1ns/1ps

module TB_S8B;

reg  [7:0] A;
reg  [7:0] B;
reg        Cin;
wire [7:0] S;
wire       Cout;

S8B uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

initial begin
    $monitor("Tiempo=%0t A=%b B=%b Cin=%b | S=%b Cout=%b",
              $time, A, B, Cin, S, Cout);

    A = 8'b00000000; B = 8'b00000000; Cin = 0;
    #10 A = 8'b00001111; B = 8'b00000001; Cin = 0;
    #10 A = 8'b11110000; B = 8'b00010000; Cin = 0;
    #10 A = 8'b10101010; B = 8'b01010101; Cin = 1;
    #10 $stop;
end

endmodule

