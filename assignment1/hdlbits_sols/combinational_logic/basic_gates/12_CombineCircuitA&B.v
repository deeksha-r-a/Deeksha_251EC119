module top_module (input x, input y, output z);
    wire w1,w2,w3,w4;
    A A1(.x(x),.y(y),.z(w1));
    A A2(.x(x),.y(y),.z(w2));
    B B1(.x(x),.y(y),.z(w3));
    B B2(.x(x),.y(y),.z(w4));
    
    assign z=(w1|w3)^(w2&w4);

endmodule
      
        module A(input x, input y, output z);
            assign z=(x^y)&x;
        endmodule
    
    module B(input x, input y, output z);
        assign z=~(x^y);
    endmodule
