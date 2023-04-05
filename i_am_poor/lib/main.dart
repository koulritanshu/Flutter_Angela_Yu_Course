import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
            backgroundColor: Colors.amberAccent, title: Text("I Am Poor")),
        body: Center(
          child: Image(
            image: AssetImage('images/aurora.jpg'),
          ),
        ),
      ),
    ),
  );
}
