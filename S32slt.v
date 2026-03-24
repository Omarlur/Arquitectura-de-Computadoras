module S32slt(
    input  [31:0] A,
    input  [31:0] B,
    output [31:0] S_slt
);
    assign S_slt = (A < B) ? 32'd1 : 32'd0;
endmodule
