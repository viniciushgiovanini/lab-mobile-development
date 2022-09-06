import 'dart:html';

import 'package:aula_0609/Imc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controladorPeso = TextEditingController();
    final TextEditingController controladorAltura = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculando IMC'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: controladorPeso,
            ),
            TextField(
              controller: controladorAltura,
            ),
            RaisedButton(
                child: Text("Calcular"),
                onPressed: () {
                  int peso = int.parse(controladorPeso.text);
                  int alt = int.parse(controladorAltura.text);
                  Imc ic = new Imc(peso, alt);
                  int receb = ic.calcularImc();
                  print(receb);
                }),
          ],
        ),
      ),
    );
  }
}
