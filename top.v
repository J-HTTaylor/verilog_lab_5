// Implement top level module
module top(
    input [7:0] sw,
    output [5:0] led
);

    light light_inst(
        .upstairs(sw[1]),
        .downstairs(sw[0]),
        .stair_light(led[0])
    );

    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .C(led[2])
    );

    full_adder full_adder_inst1(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(Carry)
    );
    wire Carry;

    full_adder full_adder_inst2(
        .A(sw[5]),
        .B(sw[7]),
        .Y(led[4]),
        .Cin(Carry),
        .Cout(led[5])

    );

endmodule