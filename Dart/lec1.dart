//1. Static type and Type inference
/*main() {
  var fname = 'Anjali';
  String lname = 'Chachra';
  print(fname + ' ' + lname);
}
*/
//2. User Input

import 'dart:io';

main() {
  print("Pleas enter something?");
  String data = stdin.readLineSync();
  print('You Entered $data');
}

//3. Data Types
/*
main() {
  print("EVEERYTHING IN DART IS OBJECT\N");
  int price1 = 250;
  var price2 = 500;
  print("Price1 is $price1|Price2 is $price2\n");

  double dprice1 = 250.98;
  var dprice2 = 500.78;
  print("Double Price1 is $dprice1|Double Price2 is $dprice2\n");

  String name1 = 'Anjali';
  var name2 = 'Priya';
  print("Name1 is $name1|Name2 is $name2\n");

  bool isOn1 = true;
  var isOn2 = false;
  print("ison1 is $isOn1|isOn2 is $isOn2");

  dynamic simple = 'Hello';
  print('Simple varible = $simple');

  simple = 400;
  print('Simple varible now  = $simple');

  simple = null;
  print('Simple varible now  = $simple');
}
*/
//4.
/*
main() {
  var s1 = 'Single quote works.';
  var s2 = "Double quotes works as well.";
  var s3 = 'We can use string delimenter. For eg, it\'s';
  var s4 = "String delimeter works too. For eg. it's";
  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');

  var s = r'Raw string does not escapes even \n.';
  print(s);
//String Interpolation
  var age = 20;
  var str = "Your age is $age";
  print(str);
//MultiLine string
  var s5 = '''
\nMulti-line string with 3 single quotes.''';

  var s6 = """
Multi-line string with 3 double quotes.""";

  print(s5);
  print(s6);
}
*/
/*
//5. Type Conversion
main() {
  var c1 = int.parse('1');
  //str is character - var c1 = int.parse('str');
  assert(c1 == 1);

  var c2 = double.parse('1.1');
  assert(c2 == 1.1);
  String c3 = 1.toString();
  assert(c3 == '1');

  String c4 = 3.14159.toStringAsFixed(2);
  assert(c4 == '3.14');
}
*/
