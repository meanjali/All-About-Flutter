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
//5. Closures
void main() {
  final val = [1, 2, 3, 4, 5];
  print(addition(val));
}

int addition(List<int> val) {
  return val.fold(0, (res, val) => res + val);
}
