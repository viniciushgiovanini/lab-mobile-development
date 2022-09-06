import 'package:flutter/material.dart';

void main() {
  runApp(const imc());
}

class imc extends StatefulWidget {
  const imc({Key? key}) : super(key: key);

  @override
  State<imc> createState() => _imcState();
}

class _imcState extends State<imc> {
  final tPeso = TextEditingController();
  final tAltura = TextEditingController();
  var msg = "Retorno";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Calculo IMC")),
      body: Body(),
    ));
  }

  Body() {
    return Column(children: [
      TextFormField(
        controller: tPeso,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: "Peso"),
      ),
      TextFormField(
        controller: tAltura,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: "Altura"),
      ),
      ElevatedButton(onPressed: Calcular, child: Text("Calcular")),
      Text(msg)
    ]);
  }

  Calcular() {
    double peso = double.parse(tPeso.text),
        altura = double.parse(tAltura.text),
        indiceMc = 0;
    indiceMc = peso / (altura * altura);
    setState(() {
      msg = indiceMc.toStringAsPrecision(4);
    });
// print(msg);
    if (indiceMc < 17) {
      msg = 'Muito Abaixo do Peso: ' + indiceMc.toStringAsPrecision(4);
    } else if (indiceMc < 18.5) {
      msg = 'Abaixo do peso: ' + indiceMc.toStringAsPrecision(4);
    } else if (indiceMc < 25) {
      msg = 'Peso normal: ' + indiceMc.toStringAsPrecision(4);
    } else if (indiceMc < 30) {
      msg = 'Acima do Peso: ' + indiceMc.toStringAsPrecision(4);
    } else if (indiceMc < 35) {
      msg = 'Obesidade grau 1: ' + indiceMc.toStringAsPrecision(4);
    } else if (indiceMc < 40) {
      msg = 'Obesidade grau 2: ' + indiceMc.toStringAsPrecision(4);
    } else {
      msg = 'Obesidade grau 3: ' + indiceMc.toStringAsPrecision(4);
    }
  }
}
