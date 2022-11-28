// Aluno: Vinícius Henrique Giovanini
// TP03: Aplicativo para alterar o tema da aplicação
// Versão: Shared Preferences 2.0.15

import 'package:flutter/material.dart';

// Importando o sharedPereferences
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MainAPP());
}

class MainAPP extends StatefulWidget {
  const MainAPP({Key? key}) : super(key: key);

  @override
  State<MainAPP> createState() => _MainAPPState();
}

class _MainAPPState extends State<MainAPP> {
  String _theme = 'Light';
  var _themeData = ThemeData.light();

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

// Carregando o tema salvo pelo usuario
// Caso não consiga achar tema anterior, é carregado o tema light.
  _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _theme = (prefs.getString('theme') ?? 'Light');
      _themeData = _theme == 'Dark' ? ThemeData.dark() : ThemeData.light();
    });
  }

// Carregando o tema salvo pelo usuario
// Altera a variavel "_themeData"
  _setTheme(theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _theme = theme;
      _themeData = theme == 'Dark' ? ThemeData.dark() : ThemeData.light();
      prefs.setString('theme', theme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('SharedPreferences'),
          centerTitle: true,
        ),
        // Corpo com os btn da app
        body: Column(children: [
          // Btn para clicar e setar tema light
          ElevatedButton(
              onPressed: () {
                _setTheme('Light');
              },
              child: Text('Light')),
          // Btn para clicar e setar tema dark
          ElevatedButton(
              onPressed: () {
                _setTheme('Dark');
              },
              child: Text('Dark'))
        ]),
      ),
    );
  }
}
