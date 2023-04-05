import 'package:flutter/material.dart';

import 'dart:math';

import 'dart:io';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Ask Me Anything',
        ),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              print('ballNumber = $ballNumber');
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image(
          image: AssetImage(
            'images/ball$ballNumber.png',
          )
      ),
        ),
    ],
    );
  }
}
