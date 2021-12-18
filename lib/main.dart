import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xilofone App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget somTitulo(Color color, String numeroSom) {
    final player = new AudioCache();

    return FlatButton(
        height: MediaQuery.of(context).size.height / 7.26,
        color: color,
        onPressed: () {
          player.play("note$numeroSom.wav");
        },
        child: Text(''));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            somTitulo(Colors.red, "1"),
            somTitulo(Colors.orange, "2"),
            somTitulo(Colors.yellow, "3"),
            somTitulo(Colors.green, "4"),
            somTitulo(Colors.teal, "5"),
            somTitulo(Colors.blue, "6"),
            somTitulo(Colors.purple, "7"),
          ],
        ),
      ),
    );
  }
}
