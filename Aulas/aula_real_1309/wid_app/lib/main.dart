import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text("Texto 1", style: formataTexto()),
            Text("Texto 2", style: formataTexto()),
            Text("Texto 3"),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    // print("Clique");
                    clique();
                  },
                  child: Text("Voltar")),
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.only(top: 55),
              decoration: BoxDecoration(
                  border: Border.all(width: 3), shape: BoxShape.circle),
            )
          ],
        )
      ],
    );
  }

  formataTexto() {
    return TextStyle(
        fontSize: 40,
        color: Colors.black,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        letterSpacing: 10,
        wordSpacing: 20,
        decoration: TextDecoration.none);
  }

  clique() {
    print("Clique da função");
  }
}


//Codigo do Estilo
/*
TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                    wordSpacing: 20,
                    decoration: TextDecoration.none)*/
