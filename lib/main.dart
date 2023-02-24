import 'package:flutter/material.dart';

main() {
  runApp(new Game());
}

class Game extends StatelessWidget {
  Widget build(BuildContext context) {

    final perguntas = [
      'What is your name?'
      'How old are you?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mika Quest-App"),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[0]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: null,
          ),
        ]
      ),
    )
  );
  }
}
