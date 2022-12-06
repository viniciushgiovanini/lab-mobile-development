import 'Transacao.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransacaoWidget extends StatelessWidget {
  final List<Transacao> transacoes;
  Function delTransacao;
  TransacaoWidget(this.transacoes, this.delTransacao);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transacoes.map((transacao) {
        return Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2)),
              padding: EdgeInsets.all(10),
              child: Text(
                'R\$ ${transacao.amout.toStringAsFixed(2)}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
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
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            IconButton(
                onPressed: () {
                  delTransacao(transacao.id);
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ));
      }).toList(),
    );
  }
}
