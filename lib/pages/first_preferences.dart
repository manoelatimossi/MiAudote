import 'package:flutter/material.dart';

class FirstPreferencesPage extends StatefulWidget {
  const FirstPreferencesPage({Key? key}) : super(key: key);

  @override
  State<FirstPreferencesPage> createState() => _FirstPreferencesPageState();
}

class _FirstPreferencesPageState extends State<FirstPreferencesPage> {
  String area = "pequeno";
  bool haveKids = true;
  String freeTime = "todos os dias";

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
            _areaRadioList(),
            _kidsRadioList(),
            _freeTimeRadioList(),
            ElevatedButton(
              child: const Text(
                "Próximo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/secondpreferences');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _areaRadioList() {
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
            "Pequeno",
            style: TextStyle(fontSize: 15),
          ),
          value: "pequeno",
          groupValue: area,
          onChanged: (value) {
            setState(() {
              area = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Médio",
            style: TextStyle(fontSize: 15),
          ),
          value: "medio",
          groupValue: area,
          onChanged: (value) {
            setState(() {
              area = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Grande",
            style: TextStyle(fontSize: 15),
          ),
          value: "grande",
          groupValue: area,
          onChanged: (value) {
            setState(() {
              area = value.toString();
            });
          },
        ),
      ],
    );
  }

  Widget _kidsRadioList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Mora com crianças pequenas?",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        RadioListTile(
          title: const Text(
            "Sim",
            style: TextStyle(fontSize: 15),
          ),
          value: true,
          groupValue: haveKids,
          onChanged: (value) {
            setState(() {
              haveKids = true;
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Não",
            style: TextStyle(fontSize: 15),
          ),
          value: false,
          groupValue: haveKids,
          onChanged: (value) {
            setState(() {
              haveKids = false;
            });
          },
        ),
      ],
    );
  }

  Widget _freeTimeRadioList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Tempo livre para passear/brincar com o animal:",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        RadioListTile(
          title: const Text(
            "Todos os dias",
            style: TextStyle(fontSize: 15),
          ),
          value: "todos os dias",
          groupValue: freeTime,
          onChanged: (value) {
            setState(() {
              freeTime = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "4 a 6 dias na semana",
            style: TextStyle(fontSize: 15),
          ),
          value: "4 a 6 dias na semana",
          groupValue: freeTime,
          onChanged: (value) {
            setState(() {
              freeTime = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "2 a 3 dias na semana",
            style: TextStyle(fontSize: 15),
          ),
          value: "2 a 3 dias na semana",
          groupValue: freeTime,
          onChanged: (value) {
            setState(() {
              freeTime = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "1 ou nenhum dia  na semana",
            style: TextStyle(fontSize: 15),
          ),
          value: "1 ou nenhum dia  na semana",
          groupValue: freeTime,
          onChanged: (value) {
            setState(() {
              freeTime = value.toString();
            });
          },
        ),
      ],
    );
  }
}
