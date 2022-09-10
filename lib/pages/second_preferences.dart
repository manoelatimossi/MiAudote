import 'package:flutter/material.dart';

class SecondPreferencesPage extends StatefulWidget {
  const SecondPreferencesPage({Key? key}) : super(key: key);

  @override
  State<SecondPreferencesPage> createState() => _SecondPreferencesPage();
}

class _SecondPreferencesPage extends State<SecondPreferencesPage> {
  bool havePets = true;
  String age = "Filhote";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1AA82),
        centerTitle: true,
        title: const Text(
          "Perfil de adoção",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
              Color(0xFFFFE0B2),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              "Por favor, marque os campos abaixo:",
              style: TextStyle(fontSize: 16),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            _petsRadioList(),
            _ageRadioList(),
            ElevatedButton(
              child: const Text(
                "Confirmar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _petsRadioList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Possui outros animais?",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        RadioListTile(
          title: const Text(
            "Sim",
            style: TextStyle(fontSize: 15),
          ),
          value: true,
          groupValue: havePets,
          onChanged: (value) {
            setState(() {
              havePets = true;
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Não",
            style: TextStyle(fontSize: 15),
          ),
          value: false,
          groupValue: havePets,
          onChanged: (value) {
            setState(() {
              havePets = false;
            });
          },
        ),
      ],
    );
  }

  Widget _ageRadioList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Espaço disponível para seu futuro animal:",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        RadioListTile(
          title: const Text(
            "Filhote",
            style: TextStyle(fontSize: 15),
          ),
          value: "filhote",
          groupValue: age,
          onChanged: (value) {
            setState(() {
              age = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Adulto",
            style: TextStyle(fontSize: 15),
          ),
          value: "Adulto",
          groupValue: age,
          onChanged: (value) {
            setState(() {
              age = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Não tenho",
            style: TextStyle(fontSize: 15),
          ),
          value: "nao tenho",
          groupValue: age,
          onChanged: (value) {
            setState(() {
              age = value.toString();
            });
          },
        ),
      ],
    );
  }
}
