import 'package:flutter/material.dart';

void main() {
  runApp(PerguntasApp());
}

class PerguntaAppState extends State<PerguntasApp> {
  int indice = 0;

  void Incrementar() {
    // CASO O INDICE CHEGUE A 2, ZERA NOVAMENTE
    if (indice == 2) {
      indice = -1;
    }

    // QUANDO OCORRER A MODIFICAÇÃO NA VARIÁVEL, A TELA SERÁ RENDERIZADA
    setState(() {
      indice++;
    });

    print("INDICE $indice");
  }

  @override
  Widget build(BuildContext context) {
    final LISTA = ["COR FAVORITA?", "BRINQUEDO PREFERIDO?", "NOME DO BATMAN?"];

    return MaterialApp(
        title: 'Olá Mundo',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Olá Mundo!"),
          ),
          body: Column(
            children: [
              Text(LISTA[indice]),
              ElevatedButton(
                child: Text("RESPOSTA 1"),
                onPressed: () {
                  Incrementar();
                },
              ),
              ElevatedButton(
                child: Text("RESPOSTA 2"),
                onPressed: () {
                  Incrementar();
                },
              ),
              ElevatedButton(
                child: Text("RESPOSTA 3"),
                onPressed: () {
                  Incrementar();
                },
              ),
            ],
          ),
        ));
  }
}

class PerguntasApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
