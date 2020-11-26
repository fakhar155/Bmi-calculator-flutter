import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/reusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final CalculatorBrain brain;

  ResultsPage({this.brain});

  @override
  Widget build(BuildContext context) {
    var bmiText = brain.calculateBMI();
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    brain.getResult().toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiText,
                    style: kBMITextStyle,
                  ),
                  Text(
                    brain.getInterpretation(),
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
