import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;

  void change(){
    setState((){
      leftDicenumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
      print('Right Dice number = $rightDicenumber');
      print('Left Dice Number = $leftDicenumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 3,
            child: TextButton(
              onPressed: (){
                change();
              },
              child: Image.asset(
                  'images/dice$leftDicenumber.png'
              ),
            ),
          ),
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed:(){
                change();
              },
              child: Image.asset(
                  'images/dice$rightDicenumber.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
}


