import 'package:flutter/material.dart';
import 'src/features/auth/presentation/screens/login_screen.dart';
import 'src/features/home/presentation/screens/welcome_screen.dart';
import 'src/features/home/presentation/screens/menu_screen.dart';
import 'src/features/home/presentation/screens/home_screen.dart';


void main() => runApp(const SittaraApp());

class SittaraApp extends StatelessWidget {
  const SittaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sittara',
      initialRoute: '/login',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/menu': (context) => const MenuScreen(),
      },
    );
  }
}