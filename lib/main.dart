import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

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

    final ThemeData tema = ThemeData(
      brightness: Brightness.light,
    );

    return MaterialApp(
        theme: tema.copyWith(
          colorScheme: tema.colorScheme.copyWith(
              primary: Colors.deepOrange, secondary: Colors.deepPurple),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Quiz App - Mika"),
          ),
          body: Column(children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
            Resposta('Resposta 4', _responder),
          ]),
        ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
