module array_traversal_while;

    //Declare and initialize array
    integer arr[0:4] = '{10, 20, 30, 40, 50};

    integer index = 0; //Start index

    initial begin
        $display("Starting array traversal using while loop...");

            //while loop to traverse the array
            while(index <= 4) begin
                $display("Index %0d : Value = %0d",index, arr[index]);
                index++; //Move to next index
            end

            $display("Array traversal finished.");
    end 
endmodule