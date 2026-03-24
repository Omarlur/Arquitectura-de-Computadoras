`timescale 1ns/1ps

module TESTEBENCH;

    // Señales
    reg  [31:0] A;
    reg  [31:0] B;
    reg  [2:0]  ALUOp;
    wire [31:0] Result;
    wire        Zero;
    
    // Instancia del ALUMIPS
    ALUMIPS uut (
        .A(A),
        .B(B),
        .ALUOp(ALUOp),
        .Result(Result),
        .Zero(Zero)
    );
    
    initial begin
        // Valores fijos A=20, B=5
        A = 32'd20;
        B = 32'd5;
        
        // Cambios cada 0.1ns para ver todo compacto
        #0.1 ALUOp = 3'b000;  // SUMA
        #0.1 ALUOp = 3'b001;  // RESTA
        #0.1 ALUOp = 3'b010;  // AND
        #0.1 ALUOp = 3'b011;  // OR
        #0.1 ALUOp = 3'b100;  // SLT
        #0.1 ALUOp = 3'b101;  // Opción no usada
        #0.1 ALUOp = 3'b110;  // Opción no usada
        #0.1 ALUOp = 3'b111;  // Opción no usada
        
        #1 $finish;
		end
    endmodule