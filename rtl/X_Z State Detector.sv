module xz_detector (
    input logic [7:0] bus_in,
    output logix has_xz
);

    always_comb begin
        has_xz = 1'b0; //default: no X/Z detected

        //Check each bit using case equality
        foreach (bus_in[i]) begin
            if (bus_in[i] === 1'bx || bus_in[i] === 1'bz) 
                has_xz = 1'b1;
        end
    end

endmodule
