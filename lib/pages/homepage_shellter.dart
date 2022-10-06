import 'package:flutter/material.dart';

class HomePageShellter extends StatefulWidget {
  const HomePageShellter({Key? key}) : super(key: key);

  @override
  State<HomePageShellter> createState() => _HomePageShellterState();
}

class _HomePageShellterState extends State<HomePageShellter> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0xFFFFE0B2),
        centerTitle: true,
        title: const Text(
          'Abrigo 4 patas',
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/shellter.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    //side: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
              child: const Text(
                "Editar foto",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            maxLines: 5,
            minLines: 3,
            initialValue:
                'Esse é um texto que representa a descrição do abrigo em questão,'
                ' normalmente serão textos muito maiores do que esse.',
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
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    //side: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
              child: const Text(
                "Editar descrição",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      //side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Animais",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),),
                onPressed: () {
                  Navigator.pushNamed(context, '/shellterpetlist');
                },
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      //side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Postagens",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      //side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                  "Doações",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),),
                onPressed: () {},
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      //side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Adotantes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //side: const BorderSide(color: Colors.red),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Voluntários",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
