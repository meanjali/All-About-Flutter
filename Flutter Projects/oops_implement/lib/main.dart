import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quizBrain.dart';
import 'QnA.dart';

QuizBrain qb=QuizBrain();
void main() {
  runApp(Quiz());
}
class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: OopsConcept(),),
        ),
      ),
    );
  }
}

class OopsConcept extends StatefulWidget {
  @override
  _OopsConceptState createState() => _OopsConceptState();
}

class _OopsConceptState extends State<OopsConcept> {
  List<Widget> score=[];
  List<bool> ans=[true,false,true];
//  List<String> questions=[
//    "Everything in Flutter is Widget",
//    "Flutter is based on Java Prog lang",
//    "Widgets in flutter are categorized as Stateful and Stateless"
//  ];
//  QnA q1=QnA(q:"Everything in Flutter is Widget",a:true);

//List <QnA>questionBank=[
//  QnA(q:"Everything in Flutter is Widget",a:true),
//  QnA(q:"Flutter is based on Java Prog lang",a:false),
//  QnA(q:"Widgets in flutter are categorized as Stateful and Stateless",a:true),
//];

  void check(bool yourAnswer){
    bool correctAns=qb.getAnswer();
    setState(() {
      if(qb.isFinished()==true){
        Alert(
          context: context,
          title: 'Done!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        qb.reset();
        score = [];
      }
      else{
      if (yourAnswer==correctAns) {
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
      qb.nextquestion();
    }});
  }

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
              child: Text(qb.getQuestion(),textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.white),),
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
              check(true);
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
                check(false);
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
