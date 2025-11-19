module circle_area_example;

    //Constant PI value
    real PI = 3.14159;

    //Function to calculate circle area
    function real circle_area_function(input real radius);
        circle_area_function = PI * radius * radius; 
    endfunction 

    //Call the function inside initial block
    initial begin
        real area;

        area = circle_area_function(2.5);
        $display("Area of circle with radius 2.5 = %0.6f", area);
    end

endmodule 