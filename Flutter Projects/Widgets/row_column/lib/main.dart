import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //verticalDirection: VerticalDirection.up,
            //mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                //width: 100,
                height: 100,
                color: Colors.red,
                child: Text("Container 1"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //width: 100,
                height: 100,
                color: Colors.green,
                child: Text("Container 2"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //width: 100,
                height: 100,
                color: Colors.blue,
                child: Text("Container 3"),
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      )));
}
