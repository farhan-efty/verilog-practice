module multiply_function_example;
//Function Definition
function int multiply_function(input int a, input int b);
    multiply_function = a * b;
endfunction 

//Call the function from an initial block 
initial begin 
    int result;

    result = multiply_function(6,9);
    $display("The product is: %0d", result);

    result = multiply_function(4,7);
    $display("The product is: %0d", result);
end

endmodule 