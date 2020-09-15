import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        title: Text("Emoji Roll"),
        backgroundColor: Colors.greenAccent[100],
      ),
      body: MAinPage(),
    ),
  ));
}



class MAinPage extends StatefulWidget {
  @override
  _MAinPageState createState() => _MAinPageState();
}

class _MAinPageState extends State<MAinPage> {
  int leftEmoji = 1, rigthEmoji = 6;
  void changeDice() {
    setState(() {
      leftEmoji = Random().nextInt(6) + 1;
      rigthEmoji = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex:2,
              child: FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset(
                    "images/emoji$leftEmoji.jpg",
                    height: 100,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ))),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset(
                  "images/emoji$rigthEmoji.jpg",
                  height: 100,
                  width: 200,
                  fit: BoxFit.fitWidth,
                )),
          ),
        ],
      ),
    );
  }
}
