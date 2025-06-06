import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final Color selectedColor = const Color(0xFF530D0F);
  final Color unselectedColor = Colors.grey;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildSvgIcon(String path, bool isSelected) {
    return SvgPicture.asset(
      path,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(
        isSelected ? selectedColor : unselectedColor,
        BlendMode.srcIn,
      ),
    );
  }

  final List<Widget> pages = [
    Center(child: Text('Home')), // ✅ Use simple widgets or real screens
    Center(child: Text('Shop')),
    Center(child: Text('Cart')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Urban Craft',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/icons/home.svg', _selectedIndex == 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/icons/shop.svg', _selectedIndex == 1),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/icons/cart.svg', _selectedIndex == 2),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/icons/user.svg', _selectedIndex == 3),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
