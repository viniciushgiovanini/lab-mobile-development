import 'package:flutter/material.dart';

// Importando o sharedPereferences
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MainAPP());
}

// COMENTAR AQUI
class MainAPP extends StatefulWidget {
  const MainAPP({Key? key}) : super(key: key);

  @override
  State<MainAPP> createState() => _MainAPPState();
}

// COMENTAR AQUI
class _MainAPPState extends State<MainAPP> {
  String _theme = 'Light';
  var _themeData = ThemeData.light();

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

// COMENTAR AQUI
// Carregando o tema salvo pelo usuário
  _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _theme = (prefs.getString('theme') ?? 'Light');
      _themeData = _theme == 'Dark' ? ThemeData.dark() : ThemeData.light();
    });
  }

// COMENTAR AQUI
// Carregando o tema salvo pelo usuário
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
        // COMENTAR AQUI
        body: Column(children: [
          // COMENTAR AQUI
          ElevatedButton(
              onPressed: () {
                _setTheme('Light');
              },
              child: Text('Light')),
          // COMENTAR AQUI
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
