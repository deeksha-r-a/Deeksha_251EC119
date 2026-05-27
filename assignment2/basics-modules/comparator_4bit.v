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



module comparator_4bit(
    input [3:0] A,
    input [3:0] B,
    output A_greater_B,
    output A_equal_B,
    output A_less_B
);

wire g3, e3, l3;
wire g2, e2, l2;
wire g1, e1, l1;
wire g0, e0, l0;


// Instantiate 1-bit comparators

comparator_1bit c3(
    .a(A[3]),
    .b(B[3]),
    .greater(g3),
    .equal(e3),
    .less(l3)
);

comparator_1bit c2(
    .a(A[2]),
    .b(B[2]),
    .greater(g2),
    .equal(e2),
    .less(l2)
);

comparator_1bit c1(
    .a(A[1]),
    .b(B[1]),
    .greater(g1),
    .equal(e1),
    .less(l1)
);

comparator_1bit c0(
    .a(A[0]),
    .b(B[0]),
    .greater(g0),
    .equal(e0),
    .less(l0)
);


// Final comparison logic

assign A_greater_B =g3 | (e3 & g2) | (e3 & e2 & g1) | (e3 & e2 & e1 & g0);

assign A_less_B =l3 | (e3 & l2) | (e3 & e2 & l1) | (e3 & e2 & e1 & l0);

assign A_equal_B = e3 & e2 & e1 & e0;

endmodule
