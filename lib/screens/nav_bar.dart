import 'package:flutter/material.dart';
import 'package:athelia/screens/home/home_page.dart';
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

  static final List<Widget> _pages = [HomePage(), HubPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(12),
          child: _pages.elementAt(_index),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: const Icon(Icons.hub), label: 'Hub'),
          ],
          onTap: _pageNavigation,
        ),
      ),
    );
  }
}
