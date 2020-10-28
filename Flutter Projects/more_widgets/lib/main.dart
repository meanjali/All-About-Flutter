import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(),
  );
}
class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();
  void _mySnackBar(){
    print("This is my snack bar");
   final s=SnackBar(
      content: Text("This is snackBar"),
     duration: Duration(seconds: 3),
     backgroundColor: Colors.green,
    );
   _scaffoldKey.currentState.showSnackBar(s);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: "Example App",
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Drawer Example App"),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: Icon(Icons.info),
              onPressed: (){
                _mySnackBar();
              },
            ),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 50.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent,
                      Colors.deepPurple,
                      Colors.purple
                    ]
                  )),
                  child: Text("This is header"),
                ),
              ),
              MyTile(Icons.inbox,"Inbox",()=>{}),
              MyTile(Icons.star_border,"Starred",()=>{}),
              MyTile(Icons.snooze,"Snoozed",()=>{}),
              MyTile(Icons.label_important,"Important",()=>{}),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  IconData i;
  String t;
  Function myTap;
  MyTile(this.i,this.t,this.myTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 6.0, 3.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))
        ),
        child: InkWell(
          splashColor: Colors.purple,
          onTap: myTap,
          child: Container(
            height: 40,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Icon(i),
                //              Icon(Icons.settings),
            Padding(
                  padding: EdgeInsets.all(10.0),
              child: Text(t,style: TextStyle(
                  fontSize: 18.0
              ),
              ),
              /*           child: Text("Settings",style: TextStyle(
                fontSize: 16.0
              ),),
 */
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
