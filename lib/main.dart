import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/password.code.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/first_preferences.dart';
import 'package:untitled/pages/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/second_preferences.dart';
import 'package:untitled/pages/signup_page.dart';
import 'package:untitled/pages/signup_type_page.dart';
import 'package:untitled/pages/Menu.dart';

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
      initialRoute: '/menu',
      routes: {
        '/': (context) => const LoginPage(),
        '/menu':(context) => const Menu(),
        '/home': (context) => const HomePage(),
        '/resetpassword': (context) => const ResetPasswordPage(),
        '/signup': (context) => const SignupPage(),
        '/signuptype': (context) => const SignupType(),
        '/passwordcode': (context) => const PasswordCodePage(),
        '/firstpreferences': (context) => const FirstPreferencesPage(),
        '/secondpreferences': (context) => const SecondPreferencesPage(),
      },
    );
  }
}
