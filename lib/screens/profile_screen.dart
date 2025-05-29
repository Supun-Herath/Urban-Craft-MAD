import 'package:flutter/material.dart';
import '../widgets/main_scaffold.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 3,
      body: Center(child: Text('User Dashboard')),
    );
  }
}
