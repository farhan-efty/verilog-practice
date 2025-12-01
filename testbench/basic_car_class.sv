//Define the Car Class
class Car;
  //Public properties
  string model;  //car model name
  int speed = 0;  //Current speed, initialized to 0

  //Public method to accelerate
  function void accelerate();
    speed += 10;  //Increase speed by 10
  endfunction

  //New brake method (clamped at 0)
  function void brake(int decrement);
    speed -= decrement;

    //Clamp speed to 0
    if (speed < 0) speed = 0;
  endfunction
endclass

//Module to test the car class
module car_test;
  initial begin
    //Instantiate a car object
    Car car1 = new();
    Car car2 = new();

    //Set the model property
    car1.model = "Sedan";
    car2.model = "SUV";

    //Accelerate the car twice
    car1.accelerate();
    car2.accelerate();

    //Apply brake only to car1
    car1.brake(7);

    //Display the car's model and final speed
    $display("-----Car Status-----");
    $display("Model: %s, Speed: %0d", car1.model, car1.speed); 
    $display("Model: %s, Speed: %0d", car2.model, car2.speed); 

  end
endmodule
