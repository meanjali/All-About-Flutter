import 'package:aboutnavigation/MyScreen2Stateful.dart';
import 'package:flutter/material.dart';

import 'MyPage2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            autofocus: false,
            keyboardType: TextInputType.datetime,
            onChanged: (t){
              value=t;
            },
          ),
          RaisedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyPage2(v:value)));
            },
            child: Text("Switch"),
          )

        ],
      ),
    );
  }
}

