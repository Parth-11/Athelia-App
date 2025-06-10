import 'package:flutter/material.dart';

class CommuntiyAppBar extends StatelessWidget {
  const CommuntiyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 14, left: 16),
      color: const Color(0xFFFFE7D1),
      height: 70,
      width: double.infinity,
      child: const Text(
        "My Cozy Corner",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color(0xFF7A4B2A),
        ),
      ),
    );
  }
}
