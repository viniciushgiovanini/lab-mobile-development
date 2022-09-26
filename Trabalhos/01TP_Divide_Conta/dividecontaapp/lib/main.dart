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
              SizedBox(
                width: 200,
                height: 100,
                child: TextFormField(
                    controller: qtdPessoas,
                    keyboardType: TextInputType.number,
                    decoration: BoxDecoration2()),
              ),
            ]),
            ElevatedButton(onPressed: calculoConta, child: Text("Calcular")),
            Text('O valor a ser divido é: ${contaFinal.toString()}')
          ])
        ], mainAxisAlignment: MainAxisAlignment.center));
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
}
