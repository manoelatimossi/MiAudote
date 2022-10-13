import 'package:untitled/pages/add_pet.dart';
import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/homepage_shellter.dart';
import 'package:untitled/pages/password.code.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/first_preferences.dart';
import 'package:untitled/pages/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/second_preferences.dart';
import 'package:untitled/pages/shellter_pet_list.dart';
import 'package:untitled/pages/signup_shellter_page.dart';
import 'package:untitled/pages/signup_tutor_page.dart';
import 'package:untitled/pages/signup_type_page.dart';
import 'package:untitled/pages/Menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miaudoção',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/addpet',
      routes: {
        '/': (context) => const LoginPage(),
        '/menu': (context) => const Menu(),
        '/home': (context) => const HomePage(),
        '/homeshellter': (context) => const HomePageShellter(),
        '/resetpassword': (context) => const ResetPasswordPage(),
        '/signuptype': (context) => const SignupType(),
        '/signuptutor': (context) => const SignUpTutorPage(),
        '/signupshellter': (context) => const SignUpShellterPage(),
        '/passwordcode': (context) => const PasswordCodePage(),
        '/firstpreferences': (context) => const FirstPreferencesPage(),
        '/secondpreferences': (context) => const SecondPreferencesPage(),
        '/shellterpetlist': (context) => const ShellterPetListPage(),
        '/addpet': (context) => const AddPetPage(),
      },
    );
  }
}
