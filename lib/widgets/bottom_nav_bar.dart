import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.black,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedIconTheme: const IconThemeData(size: 28),
      unselectedIconTheme: const IconThemeData(size: 24),
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            height: 24,
            width: 24,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/shop.svg'),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/cart.svg'),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/user.svg'),
          label: 'Profile',
        ),
      ],
    );
  }
}
