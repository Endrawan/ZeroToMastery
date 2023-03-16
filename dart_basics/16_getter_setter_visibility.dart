void main() {
  Car car1 = Car();
  car1.setColor = "Red";

  Car car2 = Car();
  car2.setColor = "Blue";

  String colorFromCar1 = car1.color;

  print('color from car 1: $colorFromCar1');

  car1.whichColor();
  car2.whichColor();
}

class Car {
  //! attribute
  late String _color;

  //! setter
  set setColor(String color) {
    this._color = color;
  }

  //! getter
  String get color => this._color;

  //! methods
  void drive() {
    print("car is moving");
  }

  void whichColor() {
    print("car color: ${this._color}");
  }
}