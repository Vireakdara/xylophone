import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color colorBox) {
    return Expanded(
      child: FlatButton(
        color: colorBox,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.yellowAccent),
              buildKey(3, Colors.orange),
              buildKey(4, Colors.blue),
              buildKey(5, Colors.purple),
              buildKey(6, Colors.greenAccent),
              buildKey(7, Colors.cyanAccent),
            ],
          ),
        ),
      ),
    );
  }
}
