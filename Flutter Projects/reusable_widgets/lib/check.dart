import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reusablewidgets/secondPage.dart';
import 'BottomButton.dart';
import 'brain.dart';
import 'constants.dart';
import 'iconButton.dart';

enum Gender{
  f,m
}
class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  int height=200;
  int weight = 60;
  int age = 20;
  Gender sGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child:Row(
              children: [
                Expanded(
                  child: CustomCard(
                    onClick: (){
                      setState(() {
                        sGender=Gender.m;
                      });
                    },
                      col: sGender==Gender.m?activeColor:inactiveColor,
                  cardChild:MyIconWidget(
                      icon: FontAwesomeIcons.mars,label:"MALE"
                  )
                  )
                ),
                Expanded(
                      child: CustomCard(
                          onClick: (){
                            setState(() {
                              sGender=Gender.f;
                            });
                          },
                          col:sGender==Gender.f?activeColor:inactiveColor, cardChild:MyIconWidget(icon: FontAwesomeIcons.venus,label:"FEMALE")
    ),
                )
              ],

            ),

          ),
          Expanded(
            child: CustomCard(col:inactiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: labelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(),
                    style: valueStyle,
                    ),
                    Text(
                      "cm",
                      style: labelStyle,
                    ),
                  ],
                  ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFF8D8E98),
                  activeTrackColor: Colors.green,
                  thumbColor: Color(0xFFEB1555),
                  overlayColor: Color(0x29EB1555),
                  thumbShape:
                  RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape:
                  RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
                child:Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  onChanged: (double nv){
                   setState(() {
                     height=nv.round();
                   });
                  },
                )
              ),
              ],
            ),
            ),
          ),
          Expanded(
            child:Row(
              children: [
                Expanded(
                  child: CustomCard(col:inactiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: LabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: NumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              }),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
    ),
    ),
                Expanded(
                  child: CustomCard(col:inactiveColor,
                cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                'AGE',
                style: LabelTextStyle,
                ),
                Text(
                age.toString(),
                style: NumberTextStyle,
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                setState(
                () {
                age--;
                },
                );
                },
                ),
                SizedBox(
                width: 10.0,
                ),
                RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                setState(() {
                age++;
                });
                })
                ],
                )
                ],
                ),
                              )
                            ),
                ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
              CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyIconWidget extends StatelessWidget {
  MyIconWidget({this.icon,this.label});
  final IconData icon;
 final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size:80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98))
        )
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({@required this.col,this.cardChild,this.onClick});
final Color col;
final Widget cardChild;
final Function onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: col,
        ),
      ),
    );
  }
}
