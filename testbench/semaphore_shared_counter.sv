module semaphore_shared_counter;

  //------------------------------------------------------
  //SHARED COUNTER & MUTEX SEMAPHORE
  //------------------------------------------------------
  integer   counter = 0;
  semaphore mtx = new(1);  //Binary semaphore -> acts as mutex

  //------------------------------------------------------
  //PROCESS 1
  //------------------------------------------------------
  initial begin : proc1
    repeat (10) begin
      mtx.get(1);  //lock
      counter = counter + 1;
      $display("[PROC1] Incremented counter -> %0d", counter);
      mtx.put(1);  //unlock
      #5;
    end
  end

  //-------------------------------------------------------
  //PROCESS 2 
  //-------------------------------------------------------
  initial begin : proc2
    repeat (10) begin
      mtx.get(1);
      counter = counter + 1;
      $display("[PROC2] Incremented counter -> %0d", counter);
      mtx.put(1);
      #7;
    end
  end

  //-------------------------------------------------------
  //FINAL VALUE
  //-------------------------------------------------------
  initial begin
    #200;  //Wait for both processes to complete
    $display("=================================");
    $display("FINAL COUNTER VALUE = %0d", counter);
    $display("=================================");
  end

endmodule
