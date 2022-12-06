import 'package:flutter/material.dart';
import 'TransacoesWidget.dart';
import 'Transacao.dart';
import 'NovaTransacao.dart';

class TransacaoUsuario extends StatefulWidget {
  const TransacaoUsuario({Key? key}) : super(key: key);

  @override
  State<TransacaoUsuario> createState() => _TransacaoUsuarioState();
}

class _TransacaoUsuarioState extends State<TransacaoUsuario> {
  final List<Transacao> transacoes = [];
  void addTransacao(String p_descricao, double p_valor) {
    final newTr = Transacao(
        DateTime.now().toString(), p_descricao, p_valor, DateTime.now());
    setState(() {
      transacoes.add(newTr);
    });
  }

  void delTransacao(String id) {
    setState(() {
      transacoes.removeWhere((transacao) => transacao.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NovaTransacao(addTransacao),
        TransacaoWidget(transacoes, delTransacao)
      ],
    );
  }
}
