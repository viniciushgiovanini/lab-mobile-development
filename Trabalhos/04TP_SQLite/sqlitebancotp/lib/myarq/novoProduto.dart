import 'package:flutter/material.dart';
import 'package:sqlitebancotp/myarq/produto.dart';

class novoProd extends StatelessWidget {
  TextEditingController descricao = TextEditingController();
  TextEditingController valor = TextEditingController();
  @override
  var a;
  Widget build(BuildContext context) {
    int cont = 0;
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
                    final String title = descricao.text;
                    final double? preco = double.tryParse(valor.text);
                    if (preco != null) {
                      produto pd = new produto(cont++, title, preco);
                      a = BodyCreateListView(pd);
                    }
                  },
                  child: Text("Incluir"))
            ],
          )),
    );
  }

  chamarLw() {
    return a;
  }
}

// Criação de um ListView, com o Builder ListView.
BodyCreateListView(produto objeto) {
  var pessoas = objeto;

  return ListView.builder(
    itemCount: 1,
    itemBuilder: ((context, index) {
      return ListTile(
        title: Text(pessoas.title),
        subtitle: Text(pessoas.preco.toString()),
      );
    }),
  );
}
