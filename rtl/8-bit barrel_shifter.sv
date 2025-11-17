module barrel_shifter (
    input logic [7:0] data_in,   //input data
    input logic [2:0] shift_amount, //shift by 0-7 bits
    input logic shift_dir,  // 0 = left shift, 1 = right shift
    output logic [7:0] data_out //shifted result


);

    always_comb begin
        if (shift_dir = 1'b0) begin
            //Logical LEFT shift
            data_out = data_in << shift_amount;
        end else begin
            //Logical RIGHT shift
            data_out = data_in >> shift_amount;
        end 
    end

endmodule