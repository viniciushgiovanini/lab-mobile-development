import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text("Texto 1"), Text("Texto 2"), Text("Texto 3")],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        Row(
            children: [Text("Texto 1"), Text("Texto 2"), Text("Texto 3")],
            mainAxisAlignment: MainAxisAlignment.spaceBetween),
        // Image.network(
        //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        Image.asset("/img/owl2.jpg"),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //mudando eixo x
      crossAxisAlignment: CrossAxisAlignment.end, //mudando eixo y
    );
  }
}
