import 'package:flutter/material.dart';
import '../widgets/main_scaffold.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 2,
      body: Center(child: Text('Your cart is empty')),
    );
  }
}
