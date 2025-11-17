module number_classifier;
    //Input number
    integer num;

    initial begin
        //Example values to classify
        integer test_values[0:3] = '{10,-5,0,7};

        //loop through test values
        for (int i = 0; i < 4; i++) begin
            num = test_values[i];

            //Classification
            if (num > 0)
            $display("Number %0d is positive", num);
            else if (num < 0)
                $display("Number %0d is Negative", num);
                else 
                $display("Number %0d is Zero", num);
                end 
            end 
        end
endmodule 