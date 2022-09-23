import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget> [
          IconButton(
            onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
             icon: const Icon(Icons.exit_to_app))
        ],),);}}