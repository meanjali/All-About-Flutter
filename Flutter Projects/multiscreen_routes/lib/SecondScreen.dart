import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Widget inserted into the tree");
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("Widgets destroyed");
  }
  @override
  Widget build(BuildContext context) {
    print("Widgets are rendered");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Go Back'),
          onPressed: () {
            //Navigator.pushNamed(context, '/first');
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
