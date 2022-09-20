import 'dart:html';

import 'package:flutter/material.dart';

//Widgets Statelles --> Sem alteração de Estado
//Widgets Statefull --> COM alteração de Estado

void main() {
  runApp(const divideC());
}

// MaterialApp(
//   title: 'Flutter Demo',
//   theme: ThemeData(
//    primaryColor: primaryColor,
//    ),
//   home: MyApp(),
// );

class divideC extends StatefulWidget {
  const divideC({Key? key}) : super(key: key);

  @override
  State<divideC> createState() => _divideConta();
}

class _divideConta extends State<divideC> {
  //Variaveis da classe
  var valorTotal = TextEditingController();
  var qtdPessoas = TextEditingController();
  double contaFinal = 0.0;

  Widget build(BuildContext context) {
    // const color = 0xFF151026;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dividir Conta"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: BodyBody(),
    ));
  }

  BodyBody() {
    return Column(children: [
      TextFormField(
          controller: valorTotal,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Valor Total", contentPadding: EdgeInsets.zero)),
      TextFormField(
          controller: qtdPessoas,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Quantidade de Pessoas")),
      ElevatedButton(onPressed: calculoConta, child: Text("Calcular")),
      Text('O valor a ser divido é: ${contaFinal.toString()}')
    ]);
  }

  calculoConta() {
    double quantidadeP = double.parse(qtdPessoas.text),
        quantidadeValor = double.parse(valorTotal.text);
    double valorFinal = 0.0;
    valorFinal = quantidadeValor / quantidadeP;
    setState(() {
      contaFinal = valorFinal;
    });
  }
}
