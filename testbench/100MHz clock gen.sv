module clock_gen(
    output logic clk 
    );

    initial begin
        clk = 0;
    end 

    always begin
        #5 clk = ~clk; //Toggle clock every 5 time units for 100MHz frequency
    end

endmodule 