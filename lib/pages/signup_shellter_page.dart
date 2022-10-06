import 'package:flutter/material.dart';

class SignUpShellterPage extends StatefulWidget {
  const SignUpShellterPage({Key? key}) : super(key: key);

  @override
  State<SignUpShellterPage> createState() => _SignUpShellterPageState();
}

class _SignUpShellterPageState extends State<SignUpShellterPage> {
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
                labelText: "Nome do abrigo",
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
                labelText: "CPF ou CNPJ",
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
                labelText: "Quais tipos de animais você abriga?",
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
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Repita sua senha",
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
                            "Continuar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
