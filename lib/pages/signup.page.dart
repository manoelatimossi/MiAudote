import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFFFE0B2)),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFFFFE0B2),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 160,
              height: 160,
              child: Image.asset("assets/miaudote.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Nome Completo",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2.8, color: Color(0xFFFFCC80)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelStyle: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digite seu endereço",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2.8, color: Color(0xFFFFCC80)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelStyle: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Data de nascimento",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2.8, color: Color(0xFFFFCC80)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelStyle: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2.8, color: Color(0xFFFFCC80)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelStyle: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2.8, color: Color(0xFFFFCC80)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelStyle: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox.fromSize(
              child: UnconstrainedBox(
                child: Container(
                  width: 160,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(241, 138, 82, 100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22),
                    ),
                  ),
                  child: SizedBox(
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Cadastrar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
/*                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );*/
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
              child: TextButton(
                child: const Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF40C4FF), fontSize: 18),
                ),
                onPressed: () {
/*                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ),
                  );*/
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
