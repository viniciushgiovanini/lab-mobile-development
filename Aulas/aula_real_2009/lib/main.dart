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
  bool valor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("input")),
        body: CheckboxListTile(
            activeColor: Colors.red,
            secondary: Icon(Icons.add_box),
            title: Text("Eleição 2022"),
            subtitle: Text("Escolha seu Canditado"),
            value: valor,
            onChanged: (bool? entrada) {
              setState(() {
                valor = entrada!;
              });
            }));
  }
}

// 1 - Primeira parte da aula, trabalhando com aliamento e img.

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [Text("Texto 1"), Text("Texto 2"), Text("Texto 3")],
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//         ),
//         Row(
//             children: [Text("Texto 1"), Text("Texto 2"), Text("Texto 3")],
//             mainAxisAlignment: MainAxisAlignment.spaceBetween),
//         // Image.network(
//         //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
//         Container(
//           child: Image.asset("/img/owl2.jpg"),
//           constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
//         )
//       ],
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly, //mudando eixo x
//       crossAxisAlignment: CrossAxisAlignment.end, //mudando eixo y
//     );
//   }
// }
