module transparent_latch(
    input logic data_in,  //Input data
    input logic enable, //latch enable
    output logic data_out // latched output
    );

    //Latch behavior
    always_latch begin
        if(enable)
        data_out = data_in; //Pass input to output when enabled
        //else, data_out holds its previous value automatically
    end
endmodule 