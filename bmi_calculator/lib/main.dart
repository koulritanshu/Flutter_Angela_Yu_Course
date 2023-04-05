import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xFF090C22)),
        scaffoldBackgroundColor: const Color(0xFF090C22),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          )
        )
      ),
      home: InputPage(),
    );
  }
}

