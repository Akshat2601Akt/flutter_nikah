import 'package:flutter/material.dart';
import 'package:nikah/screens/home_screen.dart';
import 'package:nikah/screens/landing_screen.dart';
import 'package:nikah/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingScreen(),
        '/second': (context) => const LoginScreen(),
        '/third': (context) => const HomeScreen(),
      },
    );
  }
}
