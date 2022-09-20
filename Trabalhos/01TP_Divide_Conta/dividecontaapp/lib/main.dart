import 'package:flutter/material.dart';

//Widgets Statelles --> Sem alteração de Estado
//Widgets Statefull --> COM alteração de Estado

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [Text("OIE")]);
  }
}
