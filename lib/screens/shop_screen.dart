import 'package:flutter/material.dart';
import '../widgets/main_scaffold.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 1,
      body: Center(child: Text('Browse our traditional products')),
    );
  }
}
