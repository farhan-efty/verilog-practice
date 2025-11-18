module swap_nonblocking;

    logic [7:0] a,b,temp;

    initial begin
        a = 8'd10;
        b = 8'd20;

        $display("Before swap(non-blocking): a = %0d, b = %0d", a, b);

        //Non-blocking assignment swap
        temp <= a;
        a <= b;     
        b <= temp;

        #1; //wait for non-blocking assignments to take effect

        $display("After swap(non-blocking): a = %0d, b = %0d", a, b);
    end
endmodule 