import 'package:flutter/material.dart';

class ShellterPetListPage extends StatefulWidget {
  const ShellterPetListPage({Key? key}) : super(key: key);

  @override
  State<ShellterPetListPage> createState() => _ShellterPetListPageState();
}

class _ShellterPetListPageState extends State<ShellterPetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Animais disponíveis para adoção',
              style: TextStyle(
                color: Color.fromRGBO(218, 110, 49, 1),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Nº de animais: 2',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                      color: Color(0xFFFFCC80),
                    ),
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: Text(
                  "Adicionar animal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('assets/old_dog.jpg',
                          height: 300, fit: BoxFit.fill),
                    ),
                    const ListTile(
                      title: Text('Luke, 5'),
                      subtitle: Text('Adicionado em: 15/04/2022'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('assets/puppy.jpg',
                          height: 300, fit: BoxFit.fill),
                    ),
                    const ListTile(
                      title: Text('Bela, 1'),
                      subtitle: Text('Adicionado em: 30/03/2022'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
