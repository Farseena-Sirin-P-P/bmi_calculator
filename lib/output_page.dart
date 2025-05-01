import 'package:bmi_calculator/extracted_buttons.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class OutputScreen extends StatelessWidget {
  OutputScreen({
    required this.bmiResult,
    required this.actualBmiResult,
    required this.interpretation,
  });

  final String bmiResult;
  final String actualBmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: resultTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              kolor: Color(0xFF101F33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bmiResult, style: normalTextStyle),
                  Text(actualBmiResult, style: largeTextStyle),
                  Text(
                    interpretation,
                    style: bmiTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonName: 'CALCULATE AGAIN',
            onPressed: Navigator.of(context).pop,
          ),
        ],
      ),
    );
  }
}
