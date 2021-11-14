import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Xyl(),
  ));
}

class Xyl extends StatelessWidget {
  void player(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded sounds({required Color color, required int soundNumber}) {
    return Expanded(
      child: RaisedButton(
          color: color,
          onPressed: () {
            player(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          sounds(color: Colors.yellow, soundNumber: 1),
          sounds(color: Colors.red, soundNumber: 2),
          sounds(color: Colors.pink, soundNumber: 3),
          sounds(color: Colors.blue, soundNumber: 4),
          sounds(color: Colors.blueGrey, soundNumber: 5),
          sounds(color: Colors.grey, soundNumber: 6),
        ],
      ),
    );
  }
}
