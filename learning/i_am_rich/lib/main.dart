import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text("I Am Rich"),
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Image(
            image: AssetImage(
              'images/diamond.png'
            ),
          ),
        ),
      ),
    ),
  );
}
