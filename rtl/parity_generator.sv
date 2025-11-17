module parity_generator (
    input logic [7:0] data_byte,
    output logic parity_even,
    output logic parity_odd
);

//Even Parity: Reductor XNOR (~^) produces 1 when number of 1s is even
assign parity_even = ~^data_byte

//Odd Parity: Reduction XOR (^) produces 1 when number of 1s is odd
assign parity_odd = ^data_byte;

endmodule