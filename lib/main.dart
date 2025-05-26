import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const UrbanCraft());
}

class UrbanCraft extends StatelessWidget {
  const UrbanCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban Craft',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginScreen(),
    );
  }
}
