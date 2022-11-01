import 'transacao.dart';
import 'package:flutter/material.dart';
// Pacote para alterar data pegado do site pub dev
import 'package:intl/intl.dart';

class transacaoUsuario extends StatelessWidget {
  transacaoUsuario({Key? key}) : super(key: key);
  final List<Transacao> transacaoLista = [
    Transacao('A1', 'Cafe', 2.00, DateTime.now()),
    Transacao('A2', 'Batata', 8.00, DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transacaoLista.map((transacao) {
        return Card(
          child: Row(
            children: [
              Container(
                child: Text(
                  'R\$ ${transacao.amout.toStringAsFixed(2)}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
              ),
              Column(
                children: [
                  Text(
                    transacao.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy HH:mm').format(transacao.date),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
