import 'package:flutter/material.dart';

//Widgets Statelles --> Sem alteração de Estado
//Widgets Statefull --> COM alteração de Estado
//Arrumar: A estrutura ta errada, tem que diminuir o tamanho dos input

void main() {
  runApp(const divideC());
}

class divideC extends StatefulWidget {
  const divideC({Key? key}) : super(key: key);

  @override
  State<divideC> createState() => _divideConta();
}

class _divideConta extends State<divideC> {
  //Variaveis da classe
  var valorTotal = TextEditingController();
  var qtdPessoas = TextEditingController();
  var porcGarc = TextEditingController();
  double contaFinal = 0.0;
  double contaTotal = 0.0;
  double parteGarco = 0.0;
  int nPessoas = 0;

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
    return Container(
        margin: EdgeInsets.symmetric(vertical: 40.0),
        child: Row(children: [
          Column(children: [
            Row(children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(children: [
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: TextFormField(
                          controller: valorTotal,
                          keyboardType: TextInputType.number,
                          decoration: BoxDecoration1()),
                    ),
                  ])),
              Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: SizedBox(
                    width: 200,
                    height: 100,
                    child: TextFormField(
                        controller: qtdPessoas,
                        keyboardType: TextInputType.number,
                        decoration: BoxDecoration2()),
                  )),
              SizedBox(
                width: 200,
                height: 100,
                child: TextFormField(
                    controller: porcGarc,
                    keyboardType: TextInputType.number,
                    decoration: BoxDecoration3()),
              )
            ]),
            Container(
                margin: const EdgeInsets.only(bottom: 40.0),
                child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: calculoConta,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text("Calcular"),
                    ))),
            Container(
              child: Row(
                children: [
                  Text(
                    'O valor dividido para ${nPessoas} é: R\$',
                    style: EstiloTextoNormal(),
                  ),
                  Text('${contaFinal.toStringAsFixed(2)}',
                      style: EstiloTextoValor()),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Text('O valor pago ao garçom: R\$',
                      style: EstiloTextoNormal()),
                  Text('${parteGarco.toStringAsFixed(2)}',
                      style: EstiloTextoValor()),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Text('Valor Total da Conta: R\$',
                        style: EstiloTextoNormal()),
                    Text('${contaTotal.toStringAsFixed(2)}',
                        style: EstiloTextoValor())
                  ],
                )),
          ])
        ], mainAxisAlignment: MainAxisAlignment.center));
  }

  calculoConta() {
    double quantidadeP = double.parse(qtdPessoas.text),
        quantidadeValor = double.parse(valorTotal.text),
        quantidadeGarc = double.parse(porcGarc.text);
    double valorGarcon = 0.0;
    double valorFinalcada = 0.0;
    double valorTotaldaConta = 0.0;

    valorGarcon = (quantidadeValor * quantidadeGarc) / 100;
    valorFinalcada = (quantidadeValor + valorGarcon) / quantidadeP;
    valorTotaldaConta = quantidadeValor + valorGarcon;

    setState(() {
      contaFinal = valorFinalcada;
      contaTotal = valorTotaldaConta;
      parteGarco = valorGarcon;
      nPessoas = int.parse(qtdPessoas.text);
    });
  }

  BoxDecoration1() {
    return InputDecoration(
      labelText: "Valor Total",
      border: OutlineInputBorder(),
      // contentPadding: EdgeInsets.symmetric(vertical: 40) PADDING

      // contentPadding: EdgeInsets.zero,
    );
  }

  BoxDecoration2() {
    return InputDecoration(
      labelText: "Quantidade de Pessoas",
      border: OutlineInputBorder(),
    );
  }

  BoxDecoration3() {
    return InputDecoration(
      labelText: "% Garçom",
      border: OutlineInputBorder(),
    );
  }

  EstiloTextoNormal() {
    return TextStyle(fontSize: 22);
  }

  EstiloTextoValor() {
    return TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  }
}
