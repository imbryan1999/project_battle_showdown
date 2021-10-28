import 'package:flutter/material.dart';
import 'package:project_mark1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      // home: const HomePage(),
      home: const SplashScreen(),
    );
  }
}
