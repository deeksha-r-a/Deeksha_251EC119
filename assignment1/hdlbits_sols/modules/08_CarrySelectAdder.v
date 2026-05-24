
  module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1;
    wire [15:0] w2, w3;
    add16 inst1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.cout(w1),.sum(sum[15:0]));
    add16 inst2(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(w2[15:0]));
    add16 inst3(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(w3[15:0]));
    
    assign sum[31:16] = (w1 == 1'b0) ? w2[15:0] : w3[15:0] ;

endmodule
