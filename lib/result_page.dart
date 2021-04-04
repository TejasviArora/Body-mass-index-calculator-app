import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'constants.dart';
import 'bottomButton.dart';

class Resultpage extends StatelessWidget {

  Resultpage({this.bmiresult,this.resultText,this.interpretation});

  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultTextButton),
                  Text(bmiresult, style: kBMItextStyle),
                  Text(interpretation, style: kAdviceStyle,
                    textAlign:TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              title: 'RE-CALCULATE'),


        ],
      ),
    );
  }
}
