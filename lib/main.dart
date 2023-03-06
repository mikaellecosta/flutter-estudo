import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta respondida!');
  }

  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é o seu nome?',
      'Qual sua idade?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App - Mika"),
      ),
      body: Column(children: <Widget>[
        Questao(perguntas[_perguntaSelecionada]),

        ElevatedButton(
          child: Text('Resposta 1'),
          onPressed: _responder,
        ),
        ElevatedButton(
          child: Text('Resposta 2'),
          onPressed: _responder,
        ),
        ElevatedButton(
          child: Text('Resposta 3'),
          onPressed: _responder,
        ),
        ElevatedButton(
          child: Text('Resposta 4'),
          onPressed: _responder,
        ),
      ]),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
