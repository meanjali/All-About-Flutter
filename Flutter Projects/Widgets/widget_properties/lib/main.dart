import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              //backgroundColor: Colors.amber,
              backgroundImage: AssetImage('images/pp.jpeg'),
            ),
            Text(
              'Jack Jones',
              style: TextStyle(
                  fontFamily: 'Lob',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Assistant Professor',
              style: TextStyle(
                fontFamily: 'Path',
                fontSize: 15.0,
                letterSpacing: 2.5,
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "jack.jones@gmail.com",
                    style: TextStyle(color: Colors.teal.shade900, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "345678912",
                    style: TextStyle(color: Colors.teal.shade900, fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    ),
  );
}
