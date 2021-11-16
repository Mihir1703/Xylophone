import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

void playSound(int index) {
  final player = AudioCache();
  player.play('sound/note$index.wav');
}

Expanded returnWidget({required Color color, required int index}) => Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: () {
            playSound(index);
          },
          child: null),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lets play sound",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text("Xylophone!!"),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              returnWidget(color: Colors.red, index: 1),
              returnWidget(color: Colors.orange, index: 2),
              returnWidget(color: Colors.yellow, index: 3),
              returnWidget(color: Colors.green, index: 4),
              returnWidget(color: Colors.teal, index: 5),
              returnWidget(color: Colors.blue, index: 6),
              returnWidget(color: Colors.purple, index: 7),
            ],
          ),
        ),
      ),
    );
  }
}
