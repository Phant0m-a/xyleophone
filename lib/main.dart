import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xyleophone());
}

class Xyleophone extends StatelessWidget {
  Widget Tile({color: Color, number: int}) {
    return Expanded(
      flex: 1,
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note$number.wav');
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // backgroundColor: Colors.green[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Tile(color: Colors.purple, number: 1),
            Tile(color: Colors.pink, number: 2),
            Tile(color: Colors.blue, number: 3),
            Tile(color: Colors.teal, number: 4),
            Tile(color: Colors.green, number: 5),
            Tile(color: Colors.yellow, number: 6),
            Tile(color: Colors.orange, number: 7),
          ],
        ),
      ),
    ));
    ;
  }
}
