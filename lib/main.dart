import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey(int num, Color col){
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1,Colors.red),
              buildKey(2,Colors.yellow),
              buildKey(3,Colors.blue),
              buildKey(4,Colors.green),
              buildKey(5,Colors.cyan),
              buildKey(6,Colors.purple),
              buildKey(7,Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
