module tb_sim_time_report;

    initial begin
        $display("Simulation Started...");
        #100; //Example simulation activity
    end

    final begin
        $display("Total simulation time elasped: = %0t", $time);
    end
endmodule