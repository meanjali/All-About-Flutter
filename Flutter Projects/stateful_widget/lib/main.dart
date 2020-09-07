import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        title: Text("Dice Roll"),
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
  int leftDice = 1, rigthDice = 6;
  void changeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rigthDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset("images/dice$leftDice.png"))),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image(
                image: AssetImage("images/dice$rigthDice.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
