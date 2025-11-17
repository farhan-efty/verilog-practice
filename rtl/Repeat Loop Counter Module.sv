module repeat_counter;
    parameter LIMIT = 7;
    integer count = 1;  //Start counting from 1

    initial begin
        $display("Starting repeat loop...");

            repeat (LIMIT) begin
                $display("Count: %0d", count);
                count = count + 1; //Increment count
            end

            $display("Repeat loop finished.");
    end 
endmodule