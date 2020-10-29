import 'package:flutter/material.dart';
class MyScreen2Stateful extends StatefulWidget {
  String v;
  MyScreen2Stateful({this.v});
  @override
  _MyScreen2StatefulState createState() => _MyScreen2StatefulState(v);
}

class _MyScreen2StatefulState extends State<MyScreen2Stateful> {
String v;
_MyScreen2StatefulState(this.v);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Screen"),
      ),
      body: Center(child: Text(
        v,
      ),),
    );
  }
}
