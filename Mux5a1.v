module Mux5a1(
    input  [31:0] A,           
    input  [31:0] B,          
    input  [2:0]  sel,         
    output [31:0] result       
);

    wire [32:0] suma_out;
    wire [32:0] resta_out;
    wire [31:0] and_out;
    wire [31:0] or_out;
    wire [31:0] slt_out;
    
    
    // Instancia para SUMA
    S32suma taco (
        .A(A),
        .B(B),
        .S_sum(suma_out)
    );
    
    // Instancia para RESTA
    S32resta torta (
        .A(A),
        .B(B),
        .S_res(resta_out)
    );
    
    // Instancia para AND
    S32and enchilada (
        .A(A),
        .B(B),
        .S_and(and_out)
    );
    
    // Instancia para OR
    S32or pozole (
        .A(A),
        .B(B),
        .S_or(or_out)
    );
    
    // Instancia para SLT
    S32slt tamal (
        .A(A),
        .B(B),
        .S_slt(slt_out)
    );
    

    reg [31:0] result_reg;
    always @(*) begin
        case(sel)
            3'b000: result_reg = suma_out[31:0];   
            3'b001: result_reg = resta_out[31:0];  
            3'b010: result_reg = and_out;          
            3'b011: result_reg = or_out;           
            3'b100: result_reg = slt_out;          
            default: result_reg = 32'b0;
        endcase
    end
    
    assign result = result_reg;

endmodule

