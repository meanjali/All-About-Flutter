import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MusicalApp());
}

class MusicalApp extends StatelessWidget {

  void soundPlay(int v){
    final p=AudioCache();
    p.play("note$v.wav");
  }
  Expanded createWidget({Color c,int n}){
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: (){
          soundPlay(n);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            createWidget(c:Colors.indigo,n:1),
            createWidget(c:Colors.blue,n:2),
            createWidget(c:Colors.green,n:3),
            createWidget(c:Colors.yellow,n:4),
            createWidget(c:Colors.orange,n:5),
            createWidget(c:Colors.red,n:6),
            createWidget(c:Colors.purple,n:7),

          ],
        ),
        ),
      ),

    );
  }
}
