module comparator_1bit(
    input a,
    input b,
    output greater,
    output equal,
    output less
);

assign greater = a & ~b;
assign less = ~a & b;
assign equal = ~(a ^ b);

endmodule
