import 'package:flutter/material.dart';

class AddPetPage extends StatefulWidget {
  const AddPetPage({Key? key}) : super(key: key);

  @override
  State<AddPetPage> createState() => _AddPetPageState();
}

class _AddPetPageState extends State<AddPetPage> {
  String ageSystem = 'anos';
  String space = 'pequeno';
  List<String> features = ['', '', '', '', ''];
  String gender = 'femea';
  String fur = 'preto';
  bool isChecked = false;

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
              'Adicionando um novo animal',
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
              'Por favor, preencha os campos abaixo',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              'Nome do Animal:',
              style: TextStyle(
                color: Color.fromRGBO(218, 110, 49, 1),
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              initialValue: 'Nome',
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFCC80),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2.8,
                    color: Color(0xFFFFCC80),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              'Adicione uma foto do seu novo animal:',
              style: TextStyle(
                color: Color.fromRGBO(218, 110, 49, 1),
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 300,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(211, 211, 200, 0.5),
              ),
              child: const Icon(
                Icons.add_a_photo_outlined,
                color: Colors.white,
                size: 200.0,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              'Idade do animal:',
              style: TextStyle(
                color: Color.fromRGBO(218, 110, 49, 1),
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              initialValue: 'Ex.: 2',
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFCC80),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2.8,
                    color: Color(0xFFFFCC80),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          _ageType(),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              "Espaço disponível para seu futuro animal:",
              style: TextStyle(
                color: Color.fromRGBO(218, 110, 49, 1),
                fontSize: 20.0,
              ),
            ),
          ),
          _spaceList(),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              "Personalidade:",
              style: TextStyle(
                color: Color.fromRGBO(218, 110, 49, 1),
                fontSize: 20.0,
              ),
            ),
          ),
          _featureList(),
        ],
      ),
    );
  }

  Widget _ageType() {
    return Column(
      children: [
        RadioListTile(
          title: const Text(
            "Meses",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "meses",
          groupValue: ageSystem,
          onChanged: (value) {
            setState(() {
              ageSystem = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Anos",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "anos",
          groupValue: ageSystem,
          onChanged: (value) {
            setState(() {
              ageSystem = value.toString();
            });
          },
        ),
      ],
    );
  }

  Widget _spaceList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioListTile(
          title: const Text(
            "Pequeno",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "pequeno",
          groupValue: space,
          onChanged: (value) {
            setState(() {
              space = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Médio",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "medio",
          groupValue: space,
          onChanged: (value) {
            setState(() {
              space = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Grande",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "grande",
          groupValue: space,
          onChanged: (value) {
            setState(() {
              space = value.toString();
            });
          },
        ),
      ],
    );
  }
  // Pending Jesulen - Start
  Widget _featureList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioListTile(
          title: const Text(
            "Ativo",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "ativo",
          groupValue: features[0],
          onChanged: (value) {
            print(value);
            print(features[0]);
            features[0] = value.toString();
            setState(() {});
          },
        ),
        RadioListTile(
          title: const Text(
            "Calmo",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "calmo",
          groupValue: features[1],
          onChanged: (value) {
            setState(() {
              isChecked ? features[1] = value.toString() : features[1] = '';
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Bravo",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "bravo",
          groupValue: features[2],
          onChanged: (value) {
            setState(() {
              isChecked ? features[2] = value.toString() : features[2] = '';
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Boa Convivência",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "boa convivencia",
          groupValue: features[3],
          onChanged: (value) {
            setState(() {
              isChecked ? features[3] = value.toString() : features[3] = '';
            });
          },
        ),
        RadioListTile(
          title: const Text(
            "Bom com crianças",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(218, 110, 49, 1),
            ),
          ),
          value: "bom com crianças",
          groupValue: features[4],
          onChanged: (value) {
            setState(() {
              isChecked ? features[4] = value.toString() : features[4] = '';
            });
          },
        ),
      ],
    );
  }
  // Pending Jesulen - End
}
