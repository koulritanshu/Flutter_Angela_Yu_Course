import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int number){
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }
  Expanded Button(Color color, int SoundNumber){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playsound(SoundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Container(
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                color: Colors.white,
              )
            ),
          )
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Button(Colors.red.shade500, 1),
              Button(Colors.orange.shade500,2),
              Button(Colors.yellow.shade500,3),
              Button(Colors.green.shade300,4),
              Button(Colors.green.shade500,5),
              Button(Colors.blue.shade500,6),
              Button(Colors.purple.shade500,7),
            ],
          ),
        ),
      ),
    );
  }
}
