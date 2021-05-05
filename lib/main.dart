import 'package:flutter/material.dart';
import 'dart:core';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  @override

  String a() => "resposta";
  void responder() {
    print(a());
  }

  var titulo = "Perguntas";
  final perguntas = ['Qual a sua cor favorita?', 'Qual o seu animal favorito?'];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            for (var i = 1; i < 4; i++)
              TextButton(
                child: 
                  Text('Reposta $i'), 
                  onPressed: () => responder()
              ),
          ],
        ),
      ),
    );
  }
}
