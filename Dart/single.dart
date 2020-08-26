class Vehicle extends Object {
  void p() => print("Its a vehicle");
}

class Car extends Vehicle {
  void p() {
    print("Its a Car");
    super.p();
  }
}

void main() {
  Car obj = new Car();
  obj.p();
}
