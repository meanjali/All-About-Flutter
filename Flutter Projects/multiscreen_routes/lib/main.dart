import 'package:flutter/material.dart';
import 'package:multiscreenroutes/MainScreen.dart';

import 'FirstScreen.dart';
import 'SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      //home: MainScreen(),
      routes: {
        '/':(context)=>MainScreen(),
        '/first':(context)=>FirstScreen(),
        '/second':(context)=>SecondScreen(),


      },
    );
  }
}