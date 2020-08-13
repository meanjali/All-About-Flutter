import 'mammal.dart';

import 'mammal.dart';

class Feline extends Mammal {
  bool hasClaws = true;
  void grow() => print("grrrrr");

  void test() {
    print("Testing in Feline");
    super.test();
  }
}
