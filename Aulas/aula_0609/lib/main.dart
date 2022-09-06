import 'package:aula_0609/Imc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  final TextEditingController controladorPeso = TextEditingController();
  final TextEditingController controladorAltura = TextEditingController();

  // const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Imc ICI = new Imc(11, 12);
                })
          ],
        ),
      ),
    );
  }
}
