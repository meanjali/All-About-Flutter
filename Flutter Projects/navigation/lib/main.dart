import 'package:flutter/material.dart';
import 'package:navigation/page1.dart';

void main() {
  runApp(BMICalculate());
}
class BMICalculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:Page1(),
    );
  }
}

