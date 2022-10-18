import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  // String paramaetro;
  // Tela2();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 2")),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Text("Segunda Tela"),
      ),
    );
  }
}
