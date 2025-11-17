module weekday_name;

//Input number representing day of the week
integer day;

initial begin
    integer test_days[0:5] = '{1,3,7,0,5,8};

    for(int i = 0; i < 6; i++) begin
        day = test_days[i];

        //Mapping number to weekday name
        case(day)
            1: $display("Day %0d is Monday", day);
            2: $display("Day %0d is Tuesday", day);
            3: $display("Day %0d is Wednesday", day);
            4: $display("Day %0d is Thursday", day);
            5: $display("Day %0d is Friday", day);
            6: $display("Day %0d is Saturday", day);
            7: $display("Day %0d is Sunday", day);
            default: $display("Day %0d is Invalid input Enter 1-7", day);
        endcase
    end
end
endmodule