module gray_to_7segment(
    input  wire A,
    input  wire B,
    input  wire C,
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g
);

 assign a = (A & B) | (A & C) | (~B & ~C) | (B & C);
   
   assign b = (~A) | (~B & ~C) | (B & C);
   
   assign c = A | (~B) | C;
   
   assign d = (A & B & ~C) |
              (~A & B) |
              (A & ~B & C) |
              (~A & ~B & ~C);
   
   assign e = (B & ~C) |
              (~A & ~B & ~C);
   
   assign f = (A & ~B) |
              (A & B & ~C) |
              (~A & ~B & ~C);
   
   assign g = (A & B) |
              (~A & B) |
              (A & ~B & C);

endmodule


