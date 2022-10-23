import 'package:flutter/material.dart';

void main() {
  runApp(const MeuMenu());
}

class MeuMenu extends StatelessWidget {
  const MeuMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          titleSpacing: 40,
          backgroundColor: Colors.green,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 40),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30.0,
                    ))),
          ],
        ),
      ),
    );
  }
}
