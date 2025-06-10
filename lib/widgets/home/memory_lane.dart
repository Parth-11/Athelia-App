import 'package:flutter/material.dart';
import 'dart:math';

class MemoryNote extends StatelessWidget {
  const MemoryNote({
    super.key,
    required this.noteText,
    this.noteColor = const Color(0xFFFEE9C1),
    this.borderColor = const Color(0xFFF0D199),
  });

  final Color noteColor;
  final String noteText;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      constraints: BoxConstraints(minHeight: 120),
      // height: 120,
      decoration: BoxDecoration(
        color: noteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 2.5),
        boxShadow: [BoxShadow()],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(noteText),
      ),
    );
  }
}

class MemorySticker extends StatelessWidget {
  const MemorySticker({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 10 / (180 / pi),
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 15,
              width: 10,
              decoration: BoxDecoration(color: const Color(0xFFD9D9D9)),
            ),
            Container(
              constraints: BoxConstraints(minHeight: 100, minWidth: 100),
              decoration: BoxDecoration(
                color: Color(0xFFFFE3C7),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Color(0xFFD6A76E), width: 4),
              ),
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
