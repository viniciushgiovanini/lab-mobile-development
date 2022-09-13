import 'dart:html';

import 'package:flutter/material.dart';
import 'package:aula_0609/imc.dart';

void main() {
  runApp(const imcClass());
}

//Declarando Classe
void aTeste() {
  imc a1 = imc(0, 0);
}

class imcClass extends StatefulWidget {
  const imcClass({Key? key}) : super(key: key);

  @override
  State<imcClass> createState() => _imcClassState();
}

class _imcClassState extends State<imcClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Calculando IMC com Classe")),
      // body: BodyBody(),
    ));
  }
}
