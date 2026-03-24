module Tb_Sum4b;
    reg  [3:0] A, B;
    wire [4:0] S;

    Sum_com4b uut(A, B, S);

    initial begin
        $monitor("A=%d B=%d S=%d", A, B, S);

        A=3;  B=2;  #10;
        A=7;  B=8;  #10;
        A=15; B=1;  #10;
        A=6;  B=5;  #10;
        A=9;  B=4;  #10;

        $stop;
    end
endmodule

