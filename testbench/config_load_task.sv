module config_load_tb;

//Automatic task to simulate serial configuration loading
task automatic config_load_task(input logic [7:0] cfg_data[],input int size);
    int i;
    begin
        for (i = 0; i < size; i++) begin
            #10; //Simulate serial delay between each byte load
            $display("Time %0t: Sending byte %0d -> 0x%02h", $time, i, cfg_data[i]);
        end
    end
endtask

//Testbench
initial begin
    logic [7:0] config_array[4];  //4 bytes of data

    //initialize configuration btyes
    config_array[0] = 8'h1A;
    config_array[1] = 8'h2B;    
    config_array[2] = 8'h3C;
    config_array[3] = 8'h4D;

    $display("Starting configuration load at time %0t", $time);
    config_load_task(config_array, 4); //Call task with size
    $display("Configuration load complete at time %0t", $time);
end
endmodule 

