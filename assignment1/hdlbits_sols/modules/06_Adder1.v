module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1;
    reg r=0;
    add16 inst1(.a(a[15:0]),.b(b[15:0]),.cin(r),.cout(w1),.sum(sum[15:0]));
    add16 inst2(.a(a[31:16]),.b(b[31:16]),.cin(w1),.sum(sum[31:16]));

endmodule
