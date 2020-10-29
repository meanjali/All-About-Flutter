
import 'package:flutter/material.dart';
/*
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
              *//*           child: Text("Settings",style: TextStyle(
                fontSize: 16.0
              ),),
 *//*
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/services.dart';


void main() => runApp(new HomePage());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new HomePage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.white,
        body: new Container(
            padding: const EdgeInsets.all(40.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(labelText: "Enter your number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(12),
                  ], // Only numbers can be entered
                ),
              ],
            )),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'Features.dart';
import 'MainGridList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Features(),
            GridSubject(),
            MainGridList()
          ],
        )
    );
  }
}*/
