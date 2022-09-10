import 'package:flutter/material.dart';

class PasswordCodePage extends StatelessWidget {
  const PasswordCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE0B2),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/miaudote.png"),
                      ),
                      const Text(
                        "Insira aqui o seu código",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: "código",
                            labelStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          style: const TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  SizedBox.fromSize(
                    child: UnconstrainedBox(
                      child: Container(
                        width: 200,
                        height: 70,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(241, 138, 82, 100),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: SizedBox(
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  "Enviar código",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: const <Widget>[
                      SizedBox(
                        width: 400,
                        height: 200,
                        child: Image(
                          image: AssetImage('assets/rodape.png'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
