import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //verticalDirection: VerticalDirection.up,
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: 100.0,
                color: Colors.teal,
                child: Text("Container 1"),
              ),
              Container(
                width: 100.0,
                color: Colors.white,
                child: Text("Container 2"),
              ),
              Container(
                width: 100.0,
                color: Colors.blueAccent,
                child: Text("Container 3"),
              ),
              Container(
                width: double.infinity,
              ),
            ],
          ),
        ),
      )));
}
