module recursive_factorial_task;

    //Automatic Recursive Task
    task automatic factorial_task(input int n, output in result);
        if (n <= 1) begin
            result = 1;
            else begin
                int temp;
                factorial_task(n-1, temp);  //Recursive Call
                result = n * temp;
            end
    endtask

    //Call the task inside initial block
    initial begin
        int factorial_result;

        factorial_task(6, factorial_result);
        $display("Factorial of 6 is: %0d", factorial_result);
    end 
endmodule 