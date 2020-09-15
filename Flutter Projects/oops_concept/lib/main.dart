import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
home: Scaffold(
  backgroundColor: Colors.teal,
  body: SafeArea(
    child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: OopsConcept(),),
  ),
),
    )
  );
}
class OopsConcept extends StatefulWidget {
  @override
  _OopsConceptState createState() => _OopsConceptState();
}

class _OopsConceptState extends State<OopsConcept> {
  List<Widget> score=[];
  List<bool> ans=[true,false,true];
  int qnum=0;
  List<String> questions=[
    "Everything in Flutter is Widget",
    "Flutter is based on Java Prog lang",
    "Widgets in flutter are categorized as Stateful and Stateless"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(questions[qnum],textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(color: Colors.green,
                child: Text("True",textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0,color: Colors.white),
                ),
              onPressed: (){
                bool correctAns=ans[qnum];
                if (correctAns==true) {
                  score.add(Icon(
                    Icons.check, color: Colors.lightGreen,
                  )
                  );
                }else{
                  score.add(
                    Icon(
                      Icons.close,color: Colors.redAccent,
                    ),
                  );
                }
              setState(() {
                qnum+=1;
              });
              },
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
                color: Colors.red,
                child: Text("False",
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.white),
                ),
              onPressed: (){

                bool correctAns=ans[qnum];
                if (correctAns==false) {
                  score.add(Icon(
                    Icons.check, color: Colors.lightGreen,
                  )
                  );
                }else{
                  score.add(
                    Icon(
                      Icons.close,color: Colors.redAccent,
                    ),
                  );
                }
                setState(() {
                  qnum+=1;

                });
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}
