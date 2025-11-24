// Testbench: Demonstrates bounded mailbox overflow behavior
// Author: [Farhan Muhib Efty]
// Date: 2025-11-23
// Description: Shows how a mailbox with limited capacity handles overflow when sender is faster than receiver.
module bounded_mailbox_overflow;

  //-----------------------------------------------
  // BOUNDED MAILBOX (capacity = 2)
  // Creates a mailbox that can hold up to 2 integer messages
  //-----------------------------------------------
  mailbox #(int) mbx = new(2);  // Size = 2

  //-----------------------------------------------
  // SENDER: Tries to send more messages than mailbox can hold
  // Attempts to send 5 messages, but mailbox can only hold 2
  //-----------------------------------------------
  initial begin : sender
    int data;
    for (data = 1; data <= 5; data++) begin
      // Try to put data into mailbox; if full, report failure
      if (mbx.try_put(data)) begin
        $display("[%0t] SENDER: Successfully sent %0d", $time, data);
      end else begin
        $display("[%0t] SENDER: Mailbox FULL, FAILED to send %0d", $time, data);
      end
      #5; // Wait 5 time units before sending next message
    end
  end

  //-----------------------------------------------
  // RECEIVER: Receives messages slowly to allow overflow
  // Waits longer than sender between receives, so mailbox fills up
  //-----------------------------------------------
  initial begin : receiver
    int rx;
    forever begin
      #12;  // Slow receiver to let mailbox fill up
      // Try to get data from mailbox; if empty, report
      if (mbx.try_get(rx)) begin
        $display("[%0t] RECEIVER: Got %0d", $time, rx);
      end else begin
        $display("[%0t] RECEIVER: Mailbox EMPTY", $time);
      end
    end
  end

// End of testbench
endmodule
