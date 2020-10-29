import 'package:flutter/material.dart';
class MyPage2 extends StatelessWidget {
  String v;
  MyPage2({this.v});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Screen"),
      ),
      body: Center(child: Text(
        v,
      ),),
    );
  }
}
