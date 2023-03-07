import 'package:flutter/material.dart';
import './questao.dart';

class Resposta extends StatelessWidget {

  final String texto; //recebe um texto
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado); //construtor para texto
  
  @override
  Widget build(BuildContext context) {
   return Container(
    width: double.infinity,
     child: ElevatedButton(
      child: Text(texto),
      onPressed: quandoSelecionado,
   ),
   );
  }
}