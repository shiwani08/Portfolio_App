import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/homeScreen.dart';
import 'package:portfolio_app/screens/aboutScreen.dart';
import 'package:portfolio_app/screens/projectsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
