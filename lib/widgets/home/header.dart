import 'package:flutter/material.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({super.key});

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // App Logo
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Icon(Icons.abc_outlined), Text("Some tagline")],
        ),
        Spacer(),
        CircleAvatar(),
      ],
    );
  }
}
