import 'dart:js';

import 'package:flutter/material.dart';
import 'package:aula_real_1810/tela2.dart';

void main() {
  runApp(MaterialApp(
    routes: {"/tela2": (context) => Tela2()},
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Primeira Tela")),
      body: Container(
          child: ElevatedButton(
        child: Text("Tela 2"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Tela2()));
        },
      )),
    );
  }
}
