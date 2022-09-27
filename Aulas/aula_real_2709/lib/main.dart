// Nome da extenção (errorLens)

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

// 2 - Usando Checkbox

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool escolhaUsuario = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("input")),
        body: Column(
          children: [
            SwitchListTile(
                title: Text("Receber Email Falsos"),
                value: escolhaUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    escolhaUsuario = valor;
                  });
                })
          ],
        ));
  }
}

//Fazendo lista de check box
/*
ListTile(
              title: Text("Masculino"),
              leading: Radio<int>(
                value: 1,
                groupValue: escolhaUsuario,
                onChanged: (int? escolha) {
                  setState(() {
                    escolhaUsuario = escolha!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Feminino"),
              leading: Radio<int>(
                value: 2,
                groupValue: escolhaUsuario,
                onChanged: (int? escolha) {
                  setState(() {
                    escolhaUsuario = escolha!;
                  });
                },
              ),
            )
*/
