import 'package:flutter/material.dart';
import 'package:athelia/screens/home/homepage.dart';
import 'package:athelia/screens/hub/hub_page.dart';

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

  static const List<Widget> _pages = [Homepage(), HubPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages.elementAt(_index),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(icon: const Icon(Icons.hub), label: 'hub'),
          ],
          onTap: _pageNavigation,
        ),
      ),
    );
  }
}
