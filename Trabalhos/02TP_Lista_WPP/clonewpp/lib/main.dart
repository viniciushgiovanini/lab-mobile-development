// Video utilizado como base: https://www.youtube.com/watch?v=1gMBSXWt1S4&ab_channel=JoseCarlosMacoratti
// Site web utilizado como base: https://www.macoratti.net/19/06/flut_lisb1.htm
//Video da troca de dados por mais telas https://www.youtube.com/watch?v=G_Dy7XkS6xQ&ab_channel=CaioMalheiros
import 'package:flutter/material.dart';
import 'package:clonewpp/telaClick.dart';

void main() {
  runApp(const MeuMenu());
}

class MeuMenu extends StatefulWidget {
  const MeuMenu({Key? key}) : super(key: key);

  @override
  State<MeuMenu> createState() => _MeuMenuState();
}

class _MeuMenuState extends State<MeuMenu> {
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
        body: Center(
          child: BodyCreateListView(),
        ),
      ),
    );
  }
}

var objetoContatos = [
  {
    "id": 1,
    "nome": "Vinícius H. G.",
    "telefone": "(31) 59549-1137",
    "imgP": "https://picsum.photos/id/237/200/300"
  },
  {
    "id": 2,
    "nome": "Maria",
    "telefone": "(31) 72254-9699",
    "imgP": "https://picsum.photos/id/1024/200/300"
  },
  {
    "id": 3,
    "nome": "Roberto",
    "telefone": "(31) 71419-0190",
    "imgP": "https://picsum.photos/id/1025/200/300"
  },
  {
    "id": 4,
    "nome": "Robson",
    "telefone": "(31) 19074-9905",
    "imgP": "https://picsum.photos/id/1026/200/300"
  },
  {
    "id": 5,
    "nome": "Nathalia",
    "telefone": "(31) 55517-1809",
    "imgP": "https://picsum.photos/id/1027/200/300"
  },
  {
    "id": 6,
    "nome": "Julia",
    "telefone": "(31) 11891-6549",
    "imgP": "https://picsum.photos/id/1028/200/300"
  },
  {
    "id": 7,
    "nome": "Sofia",
    "telefone": "(31) 45217-3807",
    "imgP": "https://picsum.photos/id/1029/200/300"
  },
  {
    "id": 8,
    "nome": "Isabele",
    "telefone": "(31) 38935-9240",
    "imgP": "https://picsum.photos/id/1040/200/300"
  },
  {
    "id": 9,
    "nome": "Alex",
    "telefone": "(31) 72254-9699",
    "imgP": "https://picsum.photos/id/1031/200/300"
  },
  {
    "id": 10,
    "nome": "Marco",
    "telefone": "(31) 88259-1281",
    "imgP": "https://picsum.photos/id/1032/200/300"
  },
  {
    "id": 11,
    "nome": "Tony",
    "telefone": "(31) 54253-5568",
    "imgP": "https://picsum.photos/id/1033/200/300"
  },
  {
    "id": 12,
    "nome": "Alice",
    "telefone": "(31) 80389-0016",
    "imgP": "https://picsum.photos/id/1044/200/300"
  },
  {
    "id": 13,
    "nome": "Pedro",
    "telefone": "(31) 11826-8712",
    "imgP": "https://picsum.photos/id/1035/200/300"
  },
  {
    "id": 14,
    "nome": "Matheus",
    "telefone": "(31) 34097-4240",
    "imgP": "https://picsum.photos/id/1036/200/300"
  },
  {
    "id": 15,
    "nome": "Luiz",
    "telefone": "(31) 40241-9904",
    "imgP": "https://picsum.photos/id/1037/200/300"
  }
];

BodyCreateListView() {
  var pessoas = objetoContatos;

  return ListView.builder(
    itemCount: pessoas.length,
    itemBuilder: ((context, index) {
      return ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage("${pessoas[index]['imgP'].toString()}"),
        ),
        title: Text('${pessoas[index]['nome'].toString()}'),
        subtitle: Text("${pessoas[index]['telefone'].toString()}"),
        trailing: Icon(Icons.menu),
        onTap: () {
          var a = '${pessoas[index]['nome'].toString()}';
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => telaSecundaria(a)));
        },
      );
    }),
  );
}
