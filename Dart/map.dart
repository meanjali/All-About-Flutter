//1.
/*
void main() {
  var myMap = {
    "id": "jayesh",
    "password": "1234",
    "name": "Priya",
  };
  print("************ Before adding data in Map ************");
  print(myMap);

  // Adding value to Map

  myMap["country"] = "Japan";
  print("************ After adding data in Map ************");
  print(myMap);
}
*/
/*
//2.
void main() {
  var myMap = Map();
  print("************ Before adding data in Map ************");
  print(myMap);

//  Adding value to Map
  myMap["id"] = "jay";
  myMap["password"] = "1234";
  myMap["country"] = "India";
  print("************ After adding data in Map ************");
  print(myMap);
}
*/
//3.

import 'dart:collection';

main() {
  HashMap map1 = new HashMap<int, String>();
  //LinkedHashMap map2 = new LinkedHashMap<int, String>();
  map1[1] = 'A';
  //map1.putIfAbsent(1, () => 'A');
  map1.update(1, (e) => 'A');
  print(map1);
  map1.update(1, (f) => '${f}B');
  print(map1);
  map1.update(1, (g) => '${g}' '${g}');
  print(map1);
  map1.update(2, (e) => 'B', ifAbsent: () => 'B');
  print(map1);
  //Size of map
  print(map1.length);
  //Check presence of key and value
  print(map1.containsKey(1));
  print(map1.containsValue('A'));
  //map1.remove(2);
  //print(map1);
  //Remove with condition
  map1.removeWhere((key, value) => key % 2 == 1 || value == 'C');
  print(map1);
  //Iterate ove Map
  map1.forEach((key, value) {
    print('key: $key, value: $value');
  });
}
