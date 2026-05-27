`timescale 1ns/1ps

module comparator_4bit_tb;

reg [3:0] A;
reg [3:0] B;

wire A_greater_B;
wire A_equal_B;
wire A_less_B;


comparator_4bit uut (
    .A(A),
    .B(B),
    .A_greater_B(A_greater_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
);


initial begin

    // Create waveform file
    $dumpfile("waveforms/comparator_4bit.vcd");
    $dumpvars(0, comparator_4bit_tb);


    // Test Case 1
    A = 4'b0000;
    B = 4'b0000;
    #10;

    // Test Case 2
    A = 4'b0101;
    B = 4'b0011;
    #10;

    // Test Case 3
    A = 4'b0010;
    B = 4'b1000;
    #10;

    // Test Case 4
    A = 4'b1111;
    B = 4'b1111;
    #10;

    // Test Case 5
    A = 4'b1010;
    B = 4'b1001;
    #10;

    // Test Case 6
    A = 4'b0110;
    B = 4'b1100;
    #10;

    $finish;

end

endmodule
