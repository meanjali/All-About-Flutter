/*
//1. Function with no arguments and return type
int Age() {
  int age = 12;
  return age;
}

main() {
  int myAge = Age();
  print(myAge);
}
*/
/*
//2. Function with arguments and no return type
AboutMySelf(int age, int totalGf) {
  print(age);
  print(totalGf);
}

main() {
  AboutMySelf(20, 0);
}
*/
/*
//3. Function with arguments and with return type
int Sum(int n1, int n2) {
  int a = n1 + n2;
  return a;
}

main() {
  int mySum = Sum(20, 30);
  print(mySum);
}
*/
/*
//4. Lamda Expression
void main() {
  findPerimeter(4, 2);
  int rectArea = getArea(10, 5);
  print("The area is $rectArea");
}

void findPerimeter(int length, int breadth) =>
    print("The perimeter is ${2 * (length + breadth)}");
int getArea(int length, int breadth) => length * breadth;
*/
//Function parameters in PPT
/*
void main() {
  final val = [1, 2, 3, 4, 5];
  print(addition(val));
}

int addition(List<int> val) {
  return val.fold(0, (res, val) => res + val);
}
*/
/*
void main() {
  String m = "Flutter uses Dart";
  //Define Closure
  Function showMessage = () {
    m = "Value of m is changed";
    print(m);
  };
  showMessage();
//Define Closure
  Function talk = () {
    String msg = "Hello world!!";
    Function say = () {
      msg = "Value is changed here as well!!";
      print(msg);
    };
    return say;
  };
  var speak = talk();
  speak();
}
*/
/*
//1. Naming functions with a variable
add(a, b) {
  return a + b;
}

var operation;
void main() {
  operation = add;
  var res = operation(2, 1);
  print("Result is ${res}");
}
*/
/*
//2. Passing function as an argument to another function
add(a, b) {
  return a + b;
}
f1(o, x, y) {
  return o(x, y);
}
void main() {
  var res = f1(add, 2, 1);
  print("Result is ${res}");
}
*/
/*
//3. Returning function
add(a, b) => a + b;
sub(a, b) => a - b;
c(bool t) => t ? add : sub;
void main() {
  var o = c(true);
  var res = o(2, 1);
  print("Result is ${res}");
}
*/
/*
//4. Storing function i data structure
add(a, b) => a + b;
  sub(a, b) => a - b;
void main() {
  var os = [add, sub];
  var o = os[0];
  var res = o(2, 1);
  print("Result is ${res}");
}
*/
/*
//5. Closures
check(val) {
  var c = 1;
  return () => print("Value is ${val + c++}");
}

void main() {
  var f = check(2);
  f();
  f();
}
*/

//Closures
Function gg(num add) {
  return (num i) => add + i;
}

void main() {
  // Create a function that adds 2.
  var g1 = gg(2);

  // Create a function that adds 4.
  var g2 = gg(4);

  print(g1(3));
  print(g2(3));
}
