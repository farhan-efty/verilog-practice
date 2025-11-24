module semaphore_limited_resource;

//--------------------------------------------------------
//SEMAPHORE WITH 2 KEYS -> represents 2 available units
//--------------------------------------------------------
semaphore resource_sem = new(2);

//A task to model each process doing some work
task automatic do_work(string name);
$display("[%0t] %s: Waiting for recourse....", $time, name);

resource_sem.get(1); //Acquire 1 key
$display("[%0t] %s: Releasing resource", $time,name);

#20; //Simulate work being done

$display("[%0t] %s: Releasing recourse.", $time, name);
resource_sem.put(1); //Release key
endtask


//-------------------------------------------------------
//FOUR CONCURRENT PROCESSES
//-------------------------------------------------------
initial fork
    do_work("PROCESS_1");
    do_work("PROCESS_2");
    do_work("PROCESS_3");
    do_work("PROCESS_4");
join


//------------------------------------------------------
// Finish simulation
//------------------------------------------------------
initial begin
    #200;
    $display("Simulation Finished");
    $finish;
end

endmodule 
