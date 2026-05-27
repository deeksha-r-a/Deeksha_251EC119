`timescale 1ns/1ps

module full_subtractor_tb;

reg a, b, bin;
wire diff, bout;

full_subtractor uut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);

initial begin

    // Create waveform file
    $dumpfile("waveforms/full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);

    // Test cases

    a = 0; b = 0; bin = 0;
    #10;

    a = 0; b = 0; bin = 1;
    #10;

    a = 0; b = 1; bin = 0;
    #10;

    a = 0; b = 1; bin = 1;
    #10;

    a = 1; b = 0; bin = 0;
    #10;

    a = 1; b = 0; bin = 1;
    #10;

    a = 1; b = 1; bin = 0;
    #10;

    a = 1; b = 1; bin = 1;
    #10;

    $finish;

end

endmodule
