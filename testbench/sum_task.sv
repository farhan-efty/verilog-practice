module sum_task_example;

//Task Definition
task sum_task(input int a, input int b);
    int result;
    begin
        result = a + b;
        $display("The sum of %0d and %0d is: %0d", a, b, result);
    end
endtask

//Call the task inside an initial block
initial begin
    sum_task(10,20);
    sum_task(5,15);
end

endmodule 