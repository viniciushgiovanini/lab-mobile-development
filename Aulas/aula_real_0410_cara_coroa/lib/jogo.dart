import 'package:flutter/material.dart';
import 'dart:math';

class jogo extends StatefulWidget {
  @override
  State<jogo> createState() => _jogoState();
}

class _jogoState extends State<jogo> {
  var _imageApp = "imagens/opcao.png";
  var _mensagem = "Escolha uma das opções abaixo";
  void opcaoSelecionada(String escolhadoUsuario) {
    var opcoes = ["cara", "coroa"];
    var numero = Random().nextInt(2);
    var escolhaApp = opcoes[numero];

    switch (escolhaApp) {
      case "cara":
        setState(() {
          _imageApp = "imagens/cara260.png";
        });
        break;
      case "coroa":
        setState(() {
          _imageApp = "imagens/coroa260.png";
        });
        break;
      default:
    }
    if (escolhadoUsuario == escolhaApp) {
      setState(() {
        _mensagem = "Você Ganhou !!!";
      });
    } else {
      setState(() {
        _mensagem = "Você Perdeu =(";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cara ou Coroa")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Cara ou Coroa",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        Image.asset(
          _imageApp,
          height: 100,
        ),
        Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => opcaoSelecionada("cara"),
              child: Image.asset("imagens/cara260.png", height: 100),
            ),
            GestureDetector(
              onTap: (() => opcaoSelecionada("coroa")),
              child: Image.asset("imagens/coroa260.png", height: 100),
            )
          ],
        )
      ]),
    );
  }
}
