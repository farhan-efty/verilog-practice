module sync_counter_4bit(
    input logic clk,  //clock input
    input logic rst_n, //active-low asynchronous reset
    output logic [3:0] count //4-bit counter output
    );

    //Asynchronous reset, synchronous counting
    always_ff @(posedge clk or nededge rst_n) begin
        if (!rst_n)
            count <= 4'b0000;  //Asynchronous reset
            else 
                count <= count + 1; //Synchronous increment
            end 
endmodule 