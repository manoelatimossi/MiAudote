import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/login.page.dart';
import 'package:untitled/pages/reset-password.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/signup.page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Life',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/homepage',
      routes: {
        '/homepage': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/resetpassword': (context) => const ResetPasswordPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
