module byte_swap_tb;

  //Automatic task that swaps upper & lower nibbles of a byte
  task automatic byte_swap_task(inout logic [7:0] data);
    logic [3:0] upper, lower;
    begin
      upper = data[7:4];  //Extract upper nibble
      lower = data[3:0];  //Extract lower nibble
      data  = {lower, upper};  //swap nibbles
    end
  endtask

  //Testbench
  initial begin
    logic [7:0] my_byte;

    my_byte = 8'hAB;
    $display("Before swap: %h", my_byte);

    byte_swap_task(my_byte);  //Call the task(inout modifies original)

    $display("After swap: %h", my_byte);
  end
endmodule
