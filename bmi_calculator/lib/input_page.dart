import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results.dart';
import 'bottom_button.dart';
import 'package:bmi_calculator/round_action_button.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolour = kInactiveCardColour;
  Color femalecardcolour = kInactiveCardColour;

  Gender? selectedGender;

  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour:  malecardcolour,
                    onPress: (){
                      setState((){
                        selectedGender = Gender.male;
                        femalecardcolour = kInactiveCardColour;
                        malecardcolour = malecardcolour == kActiveCardColour ? kInactiveCardColour : kActiveCardColour;
                      });
                    },
                    cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: femalecardcolour,
                    onPress: (){
                      setState((){
                        selectedGender = Gender.female;
                        malecardcolour = kInactiveCardColour;
                        femalecardcolour = femalecardcolour == kActiveCardColour ? kInactiveCardColour : kActiveCardColour;
                      });
                    },
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label:'FEMALE'),),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: const Color(kFillColour),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220.0,
                        min: 100.0,
                        activeColor: const Color(kPink),
                        inactiveColor: kInactiveSliderColor,
                        onChanged: (double newValue){
                          setState((){
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: const Color(kFillColour),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onClick: (){
                                    setState((){
                                      weight--;
                                    });
                                  },
                              ),
                              const SizedBox(width: 10.0,),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onClick: (){
                                    setState((){
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
                  child: ReusableCard(
                      colour: const Color(kFillColour),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(icon: FontAwesomeIcons.minus,
                                onClick: (){
                                  setState((){
                                    age--;
                                  });
                                },
                              ),
                              const SizedBox(width: 10.0,),
                              RoundIconButton(icon: FontAwesomeIcons.plus,
                                onClick: (){
                                  setState((){
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onClick: (){
              Calculator calc = Calculator(
                weight: weight,
                height: height,
              );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmi: calc.calculateBMI(),
                        result: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
            },
            buttonTitle: 'CALCULATE',
          ),
        ],
      )
    );
  }
}




