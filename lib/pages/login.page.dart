import 'package:flutter/material.dart';
import 'package:untitled/pages/reset-password.dart';
import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE0B2),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFFFFE0B2),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 190,
              height: 190,
              child: Image.asset("assets/miaudote.png"),
            ),
            const SizedBox(
              height: 30,
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
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      "Esqueceu sua senha?",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Color(0xFF40C4FF), fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/resetpassword');
                    },
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    child: const Text(
                      "Sou um abrigo",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Color(0xFF40C4FF), fontSize: 16),
                    ),
                    onPressed: () {
/*                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordPage(),
                        ),
                      );*/
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox.fromSize(
              child: UnconstrainedBox(
                child: Container(
                  width: 120,
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
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
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
              height: 100,
              child: TextButton(
                child: const Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF40C4FF), fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
