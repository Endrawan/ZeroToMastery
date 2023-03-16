

void main() {
  final blueCar = Car(color: "blue", engine: "v8");
  // blueCar.color = "blue";
  print(blueCar.color);
}

class Car {

  Car({required this.color, required this.engine});

  //! attribute
  late String color;
  late String engine;

  //! methods
  void drive() {
    print("car is moving");
  }

  void whichColor() {
    print("car color: ${this.color}");
  }
}