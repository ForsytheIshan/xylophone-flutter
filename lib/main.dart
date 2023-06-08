import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp()); // Arrow syntax is used for a single line function

class XylophoneApp extends StatelessWidget {
  
  //Function to play the note number

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  //Function to create an Expanded widget with the TextButton to play the sound

  Expanded buildKey({required int soundNumber, required Color color}) { 
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
