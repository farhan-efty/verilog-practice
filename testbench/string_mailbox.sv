module string_mailbox;

  //--------------------------------------------------------------
  // Mailbox Declaration (parameterrized for string)
  //--------------------------------------------------------------
  mailbox #(string) msg_box = new();

  //--------------------------------------------------------------
  //SENDER PROCESS: Sends strings messages
  //--------------------------------------------------------------
  initial begin : sender
    string messages[] = '{"Hello", "World", "SystemVerilog", "Mailbox", "Demo"};

    foreach (messages[i]) begin
      $display("[SENDER] Sending: %s", messages[i]);
      msg_box.put(messages[i]);  //Put message into mailbox
      #10;  //Delay between messages
    end
  end


  //--------------------------------------------------------------
  //RECEIVER PROCESS: Receives and prints messages
  //--------------------------------------------------------------
  initial begin : receiver
    string recv_msg;
    forever begin
      msg_box.get(recv_msg);  //Wait untill a message arrives
      $display("[RECEIVER] Got: %s", recv_msg);
    end
  end
endmodule
