`timescale 1ns/1ps

module Gray_to_sevensegment_tb;

reg A, B, C;

wire a, b, c, d, e, f, g;

gray_to_7segment uut (
    .A(A),
    .B(B),
    .C(C),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g)
);

  

    initial begin
    
        $dumpfile("Gray_to_sevensegment.vcd");
        $dumpvars(0,Gray_to_sevensegment_tb);
    
    
        $monitor("A=%b B=%b C=%b -> a=%b b=%b c=%b d=%b e=%b f=%b g=%b",
                  A,B,C,a,b,c,d,e,f,g);
    
        A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
        A=0; B=1; C=1; #10;
        A=0; B=1; C=0; #10;
        A=1; B=1; C=0; #10;
        A=1; B=1; C=1; #10;
        A=1; B=0; C=1; #10;
        A=1; B=0; C=0; #10;
    
        $finish;
    
    end

endmodule





