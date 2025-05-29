import 'package:flutter/material.dart';
import 'package:urban_craft/screens/profile_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/shop_screen.dart';
import 'screens/cart_screen.dart';

void main() {
  runApp(const UrbanCraft());
}

class UrbanCraft extends StatelessWidget {
  const UrbanCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban Craft',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/shop': (context) => const ShopScreen(),
        '/cart': (context) => const CartScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
