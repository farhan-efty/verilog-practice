module multiplier_8bit (
    input logic [7:0] a,
    input logic [7:0] b,
    output logic [15:0] product
    );

    always_comb begin
        product = a * b; //Pure combinational multiplication
    end
endmodule