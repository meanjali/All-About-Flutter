import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Text("I am container"),
            height: 200.0,
            width: 100.0,
            //margin: EdgeInsets.all(20.0),
            //margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
            //margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
            margin: EdgeInsets.only(left: 30.0),
            padding: EdgeInsets.all(20.0),
          ),
        ),
      ),
    ),
  );
}
