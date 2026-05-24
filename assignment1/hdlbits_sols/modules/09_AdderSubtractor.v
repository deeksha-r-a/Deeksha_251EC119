module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w1;
    wire [31:0]b1;
    assign b1= b^{32{sub}};
    add16 inst1(.a(a[15:0]),.b(b1[15:0]),.cin(sub),.cout(w1),.sum(sum[15:0]));
    add16 inst2(.a(a[31:16]),.b(b1[31:16]),.cin(w1),.sum(sum[31:16]));
    
endmodule
