import 'package:flutter/material.dart';
import 'src/features/home/presentation/screens/welcome_screen.dart';

void main() => runApp(const SittaraApp());

class SittaraApp extends StatelessWidget {
  const SittaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sittara',
      home: WelcomeScreen(), // Change to WelcomeScreen
    );
  }
}