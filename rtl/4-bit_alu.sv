module alu_4bit (
    input logic [3:0] a,b,
    input logic [1:0] op,  //operation selector
    output logic [3:0] result,
    output logic carry_out //carry for ADD
);

    always_comb begin
        //Default assignments
        result = 4'b0000;
        carry_out = 1'b0;

        case(op)
        2'b00: begin
            //AND operation (bitwise)
            result = a & b;
    end
        2'b01: begin
            //OR operation (bitwise)
            result = a | b; 
    end
        2'b10: begin
            // XOR operation (bitwise)
            result = a ^ b;    
    end
        2'b11: begin
            // ADD operation
            {carry_out, result} = a + b; // Concatenate carry_out with result
    end
        default: begin
            result = 4'b0000;
            carry_out = 1'b0;
        end
        endcase
    end
    
)