// Aluno: Vinícius Henrique Giovanini
import 'package:flutter/material.dart';

class telaSecundaria extends StatefulWidget {
  String name;
  telaSecundaria(this.name);

  @override
  State<telaSecundaria> createState() => _telaSecundariaState();
}

class _telaSecundariaState extends State<telaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Recebe dado da outra pagina e aplica no Text do appBar
        title: Text(widget.name),
        titleSpacing: 40,
        backgroundColor: Colors.green,
      ),
    );
  }
}
