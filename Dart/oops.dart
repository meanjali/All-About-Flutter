/*
//Example 1
class Mobile {
  String color; // Property
  String brandName;
  String modelName;
  String calling() {
    // Method Creation
    return "Mobile can do calling";
  }

  String musicPlay() {
    return "Mobile can play Music";
  }

  String videoPlay() {
    return "Mobile can play video";
  }
}

main() {
  var myMobile = new Mobile(); // Creating Object

  myMobile.color = "White"; // Accessing Class's Property
  myMobile.brandName = "Apple Inc.";
  myMobile.modelName = "iPhone 14";

  print(myMobile.color);
  print(myMobile.modelName);
  print(myMobile.brandName);
  print(myMobile.calling());
  print(myMobile.musicPlay());
  print(myMobile.videoPlay());
}
*/
/*
//Example 2 - Default Constructor
void main() {
  var firstCar = Car();
  firstCar.name = 'Prius';
  firstCar.colour = 'White';
//  print('1st car name is ${firstCar.name} and colour is ${firstCar.colour}');
  firstCar.driving();
  var secondCar = Car();
  secondCar.name = 'Honda Fit';
  secondCar.colour = 'Black';
//  print('2nd car name is ${secondCar.name} and colour is ${secondCar.colour}');
  secondCar.brake();
}

class Car {
  //properties
  String colour, name;
  //Methods
  void driving() {
    print('${this.colour} ${this.name} is driving');
  }

  void brake() {
    print('${this.colour} ${this.name} is not driving');
  }
}
*/
/*
//3. Parameterised Constructor
void main() {
  var firstCar = Car('Prius', 'White');
  firstCar.driving();
  var secondCar = Car('Honda Fit', 'Black');
  secondCar.brake();
}

class Car {
  //properties
  String colour, name;
  Car(this.colour, this.name);
/*  Car(String col, String na) {
    colour = col;
    name = na;
  }
  */
  //Methods
  void driving() {
    print('${this.colour} ${this.name} is driving');
  }

  void brake() {
    print('${this.colour} ${this.name} is not driving');
  }
}
*/
/*
//4. Scope
void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
    if (i < 8) {
      //int i = 5;
      if (i > 4) {
        print("${i} id <8 and >4");
      }
    }
  }
}
*/
/*
//5. Encapsulation - Public and Private Scope
import 'oops2.dart';

main() {
  Animal cat = Animal('fluffy', 4, 'Short Hair');
  //cat._name = "Tuffy";
  cat.breed = "medium hair";
  cat.sayHello();
  //If display is private; can not access from this file; saySomething(String message)=> this._display(message)
  cat.saySomething("Meow");
}
*/
/*
//6. Getters and Setters
import 'oops2.dart';

void main() {
  Animal dog = Animal("Rango", 6);
  dog.name = "Fiddo"; //setter
  print(dog.name); //getter
  print("Before Setter - ${dog.age}");
  dog.age = 4; //setter
  print("After Setter - ${dog.age}"); //getter
}
*/
//Static members
import 'oops2.dart';

void main() {
  Animal dog = Animal();
  Animal cat = Animal();
  Animal bird = Animal();
  Animal fish = Animal();
  Animal.run();
}
