import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class MainScaffold extends StatelessWidget {
  final int currentIndex;
  final Widget body;

  const MainScaffold({
    super.key,
    required this.currentIndex,
    required this.body,
  });

  void _navigate(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/shop');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/cart');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Urban Craft',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
      ),
      body: body,
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) => _navigate(context, index),
      ),
    );
  }
}
