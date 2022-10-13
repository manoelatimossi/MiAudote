import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            child: Icon(
              Icons.home,
              color: Color(0xFFFFCC80),
              size: 50.0,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          leadingWidth: 200,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.exit_to_app,
                    color: Color(0xFFFFCC80), size: 50.0)),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 25,
                ))
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
              Color(0xFFFFE0B2),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: ListView( children: [
          Padding(padding: const EdgeInsets.all(0),
            child:CircleAvatar(
                radius: 50,
                backgroundImage:AssetImage('assets/dog1.jpg'),
              )),
             Padding(padding: const EdgeInsets.all(35),
            child: SizedBox(
              height:40, width:5, child:  TextButton(
    child: Text('Usernamer'),
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Color.fromARGB(2255, 255, 204, 128),
      textStyle: TextStyle(
          fontSize: 20
    )),
    onPressed: null))),
            Padding(padding: const EdgeInsets.all(15),
            child: ElevatedButton.icon(
                onPressed: null,
                icon: Icon(Icons.favorite),
                label: Text('Procurar Matches'),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 204, 128))))),
            Padding(padding: const EdgeInsets.all(15),
            child: ElevatedButton.icon(
                onPressed: null,
                icon: Icon(Icons.wechat),
                label: Text('Suas Conversas'),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 204, 128))))),
            Padding(padding: const EdgeInsets.all(15),
            child: ElevatedButton.icon(
                onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
                icon: Icon(Icons.home),
                label: Text('Feed dos abrigos'),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 204, 128))))),
            Padding(padding: const EdgeInsets.all(15),
            child: ElevatedButton.icon(
                onPressed: null,
                icon: Icon(Icons.security),
                label: Text('Fazer Denúncia'),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 204, 128))))),
            Padding(padding: const EdgeInsets.all(15),
            child: ElevatedButton.icon(
                onPressed: null,
                icon: Icon(Icons.settings),
                label: Text('Configurações'),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 204, 128)))))
          ]),
        ));
  }
}
