import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
enum Gender{
  m,f
}
Color activeColor=Color(0xFF1D1E33);
Color inActiveColor=Color(0xFF1D1E50);

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}
class _Page1State extends State<Page1> {
  Gender sGender;
//  Color maleColor=inActiveColor;
//  Color femaleColor=inActiveColor;
////MAle -1 and Female -2
//void changeColor(int gender){
//  if(gender==1){
//    if(maleColor==inActiveColor){
//      maleColor=activeColor;
//      femaleColor=inActiveColor;
//    }else{
//      maleColor=inActiveColor;
//    }
//  }
//  if(gender==2){
//    if(femaleColor==inActiveColor){
//      femaleColor=activeColor;
//      maleColor=inActiveColor;
//    }else{
//      femaleColor=inActiveColor;
//    }
//  }
//}
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
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    sGender=Gender.m;
                  });
                },
                  child: CustomCard(col:sGender==Gender.m?activeColor:inActiveColor,

                  )
              ),

            ),
            Expanded(
              child: GestureDetector(
                  onTap: (){
                    setState(() {
                      sGender=Gender.f;
                    });
                  },
                  child: CustomCard(col:Color(0xFF1D1E33))),
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



