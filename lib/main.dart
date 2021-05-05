import 'package:flutter/material.dart';
import 'dart:core';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var peguntaSelecionada = 0;

  void responder() {
    setState(() {
      peguntaSelecionada++;
    });
    print(peguntaSelecionada);
  }

  var titulo = "Perguntas";
  final perguntas = ['Qual a sua cor favorita?', 'Qual o seu animal favorito?'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[peguntaSelecionada]),
            for (var i = 1; i < 4; i++)
              TextButton(child: Text('Reposta $i'), onPressed: responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() => PerguntaAppState();
}
