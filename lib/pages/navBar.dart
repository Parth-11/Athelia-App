import 'package:flutter/material.dart';
import 'package:athelia/pages/home/homepage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _index = 0;
  void _pageNavigation(int index) {
    setState(() {
      _index = index;
    });
  }

  static const List<Widget> _pages = [Homepage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages.elementAt(_index),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          items: [BottomNavigationBarItem(icon: const Icon(Icons.home))],
          onTap: _pageNavigation,
        ),
      ),
    );
  }
}
