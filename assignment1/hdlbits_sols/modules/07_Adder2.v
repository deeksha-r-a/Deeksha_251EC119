module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire w1;
    reg cin0 = 0;
    
    add16 lower(.a(a[15:0]),.b(b[15:0]),.cin(cin0),.cout(w1),.sum(sum[15:0]));
    add16 upper(.a(a[31:16]),.b(b[31:16]),.cin(w1),.sum(sum[31:16]));
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
	assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(a&cin);
// Full adder module here

endmodule
