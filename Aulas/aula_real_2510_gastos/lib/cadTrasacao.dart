import 'package:flutter/material.dart';

class CadTrasacao extends StatelessWidget {
  CadTrasacao({Key? key}) : super(key: key);
  final descritivoController = TextEditingController();
  final valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Descrição'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor'),
                  // Keybord type serve para o programa em mobile,
                  // Para subir teclado numerico.
                  keyboardType: TextInputType.number,
                ),
                // Esse SizedBox serve para estipular o tamanho do componente.
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Incluir"))
              ],
            )));
  }
}
