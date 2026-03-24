module Tb_Sum8b;
    reg  [7:0] A, B;
    wire [8:0] S;

    Sum_com8b uut(A, B, S);

    initial begin
        $monitor("A=%d B=%d S=%d", A, B, S);

        A=25;  B=10;  #10;
        A=100; B=50;  #10;
        A=200; B=55;  #10;
        A=150; B=100; #10;
        A=255; B=1;   #10;

        $stop;
    end
endmodule

