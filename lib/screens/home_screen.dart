import 'package:flutter/material.dart';
import '../widgets/main_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 0,
      body: Center(child: Text('Welcome to Urban Craft')),
    );
  }
}
