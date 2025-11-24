module event_phase_sync_tb;

  //-------------------------------------------------------
  //EVENT DECLARATION
  //-------------------------------------------------------
  event config_phase_done;

  //-------------------------------------------------------
  //CONFIGURATION PHASE
  //-------------------------------------------------------
  initial begin : config_phase
    $display("[%0t] CONFIG PHASE: Started", $time);

    //Simulated configuration work
    #20;
    $display("[%0t] CONFIG PHASE: Applying configuration...", $time);
    #20;
    $display("[%0t] CONFIG PHASE: Configuration done.", $time);


    //Trigger event
    ->config_phase_done;
    $display("[%0t] CONFIG PHASE: Triggered config_phase_done event.", $time);

    $display("[%0t] CONFIG PHASE: Ended", $time);
  end


  //-------------------------------------------------------
  //VERIFICATION PHASE (waits for event)
  //-------------------------------------------------------
  initial begin : verification_phase
    $display("[%0t] VERIF PHASE: Waiting for configuration to complete...", $time);

    //wait for the event
    @(config_phase_done);
    $display("[%0t] VERIF PHASE: Detected config_phase_done!", $time);

    //Verification work
    $display("[%0t] VERIF PHASE: Started", $time);
    #30;
    $display("[%0t] VERIF PHASE: Running checks...", $time);
    #30;
    $display("[%0t] VERIF PHASE: Completed verification.", $time);

    $display("[%0t] VERIF PHASE: Ended", $time);
  end


  //-------------------------------------------------------
  // Finish simulation
  //-------------------------------------------------------
  initial begin
    #200;
    $display("Simulation Finished");
    $finish;
  end

endmodule
