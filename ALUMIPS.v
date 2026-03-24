module ALUMIPS(
    input  [31:0] A,
    input  [31:0] B,
    input  [2:0]  ALUOp,
    output [31:0] Result,
    output        Zero
);

    wire [31:0] mux_result;
    
    // Instancia del Mux5a1
    Mux5a1 mux_inst (
        .A(A),
        .B(B),
        .sel(ALUOp),
        .result(mux_result)
    );
    
    assign Result = mux_result;
    assign Zero = (mux_result == 32'b0) ? 1'b1 : 1'b0;

endmodule
