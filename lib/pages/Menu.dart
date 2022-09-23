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
          child: ListView(padding: const EdgeInsets.all(8), children: [
            SizedBox(height: 50),
            ElevatedButton.icon(
                onPressed: null,
                icon: Icon(Icons.favorite),
                label: Text('Procurar Matches'))
          ]),
        ));
  }
}
