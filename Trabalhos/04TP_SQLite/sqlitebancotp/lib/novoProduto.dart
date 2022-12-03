import 'package:flutter/material.dart';

class novoProd extends StatelessWidget {
  TextEditingController descricao = TextEditingController();
  TextEditingController valor = TextEditingController();
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
                decoration: InputDecoration(labelText: "Descrição"),
                controller: descricao,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Valor"),
                keyboardType: TextInputType.number,
                controller: valor,
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              ElevatedButton(
                  onPressed: () {
                    // addTr(descricao.text, double.parse(valor.text));
                  },
                  child: Text("Incluir"))
            ],
          )),
    );
  }
}
