import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {

  final String bmi;
  final String result;
  final String interpretation;

  ResultsPage({required this.bmi, required this.result, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded (
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kOutputStyle,
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
                children: [
                  Text(
                    result.toUpperCase(),
                    style: kResultsTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kResultsValueStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kMessageStyle,
                  ),
                ],
              )
              ,
            ),
          ),
          BottomButton(
            onClick: (){
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      )
    );
  }
}
