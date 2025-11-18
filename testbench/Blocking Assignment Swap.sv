module swap_blocking;
    logic [7:0] a,b, temp;

    initial begin
        a = 8'd10;
        b = 8'd20;

        $display("Before swap (blocking): a = %0d, b = %0d", a, b);

        //Blocking assignment swap
        temp = a;
        a = b;
        b = temp;

        $display("After swap (blocking): a = %0d, b = %0d", a, b);
    end 
endmodule