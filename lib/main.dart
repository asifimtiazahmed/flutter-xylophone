import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //static AudioCache player = AudioCache();
  void playNote(int noteNum){
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }
  Expanded genKeys({Color keyColor, int noteNum}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playNote(noteNum);
        },
        color: keyColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              genKeys(keyColor: Colors.red, noteNum: 1),
              genKeys(keyColor: Colors.orange, noteNum: 2),
              genKeys(keyColor: Colors.yellow, noteNum: 3),
              genKeys(keyColor: Colors.green, noteNum: 4),
              genKeys(keyColor: Colors.teal, noteNum: 5),
              genKeys(keyColor: Colors.blue, noteNum: 6),
              genKeys(keyColor: Colors.purple, noteNum: 7),
              genKeys(keyColor: Colors.white60, noteNum: 8),
            ],
          ),
        ),
      ),
    );
  }
}
