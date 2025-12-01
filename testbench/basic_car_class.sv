//Define the Car Class
class Car;
  //Public properties
  string model;  //car model name
  int speed = 0;  //Current speed, initialized to 0

  //Public method to accelerate
  function void accelerate();
    speed += 10;  //Increase speed by 10
  endfunction
endclass


//Module to test the car class
module car_test;
  initial begin
    //Instantiate a car object
    Car my_car = new();

    //Set the model property
    my_car.model = "Sedan";

    //Accelerate the car twice
    my_car.accelerate();
    my_car.accelerate();

    //Display the car's model and final speed
    $display("Car Model: %s", my_car.model);
    $display("Final Speed: %0d", my_car.speed);  //Expected: 20

  end
endmodule
