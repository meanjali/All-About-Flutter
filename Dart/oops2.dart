/*
//Example 1
class Animal {
  String _name = "", breed = "";
  int _age = 0;
  Animal(String n, int a, String b) {
    this._name = n;
    this._age = a;
    this.breed = b;
  }
  sayHello() => print(
      "Hello my name is ${_name}, i'm ${_age}years old and breed is ${breed}");
  _display(String message) => print("Message is ${message}");
  saySomething(String m) => this._display(m);
}
*/

/*
class Animal {
  String _name;
  int _age = 0;
  Animal(String n, int a) {
    _name = n;
    _age = a;
  }
  String get name => _name;
  void set name(String val) => _name = val;

  int get age => _age;
  void set age(int val) => _age = val * 7;
}
*/

class Animal {
  static int c = 0;
  //int c = 0;
  Animal() {
    c++;
    print("There is ${c} of us");
  }
  static void run() {
    print("Running");
  }
}
