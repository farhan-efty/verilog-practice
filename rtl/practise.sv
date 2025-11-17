module foreach_example;
    integer data_values[5] = '{15, 25, 35, 45, 55};

    initial begin
        $display("Iterating with foreach loop.");
            foreach (data_values[index]) begin
            end
            $display("Foreach loop finished.");
    end
endmodule