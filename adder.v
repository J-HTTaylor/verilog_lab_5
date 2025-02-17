module adder(
    // Declare your A/B inputs
    // Declare Y output
    // Declare carry output

    input A,
    input B,
    output Y,
    output C
);


    assign Y = (A ^ B);
    assign C = (A & B);
    // Enter logic equation here

endmodule