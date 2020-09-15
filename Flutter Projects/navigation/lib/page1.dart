import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}
class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
          child: Row(
          children: [
            Expanded(
              child: CustomCard(col:Color(0xFF1D1E33)),
            ),
            Expanded(
              child: CustomCard(col:Color(0xFF1D1E33)),
            ),
          ],
          ),
        ),
          Expanded(
            child: CustomCard(col:Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(col:Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: CustomCard(col:Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color col;
  CustomCard({@required this.col});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}



