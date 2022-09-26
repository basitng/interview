import 'package:flutter/material.dart';
import 'package:interview_a/Screens/statics.dart';
import 'package:interview_a/screens/home.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/profile",
      routes: {
        '/': (context) => StatisicScreen(),
        '/profile': (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
