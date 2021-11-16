import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final player = AudioCache();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lets play sound",
      home: ElevatedButton(
          onPressed: () {
            player.play("/sound/note1.wav");
          },
          child: const Text("Press me")),
    );
  }
}
