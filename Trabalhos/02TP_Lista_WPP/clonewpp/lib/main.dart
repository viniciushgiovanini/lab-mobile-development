import 'package:flutter/material.dart';

void main() {
  runApp(const MeuMenu());
}

class MeuMenu extends StatelessWidget {
  const MeuMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("WhatsApp")),
      ),
    );
  }
}
