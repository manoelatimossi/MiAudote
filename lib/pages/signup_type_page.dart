import 'package:flutter/material.dart';

class SignupType extends StatelessWidget {
  const SignupType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFFFFE0B2),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 190,
                height: 190,
                child: Image.asset("assets/miaudote.png"),
              ),
              _chooseType(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chooseType(BuildContext context) {
    return AlertDialog(
      content: const Text(
        'Antes de continuar precisamos saber, você representa um abrigo?',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color(0xFFF1AA82),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signupshellter');
          },
          child: const Text(
            'Sim',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signuptutor');
          },
          child: const Text(
            'Não',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
