import 'package:flutter/material.dart';

class MemoryNote extends StatelessWidget {
  const MemoryNote({
    super.key,
    required this.noteText,
    this.noteColor = const Color(0xFFFEE9C1),
  });

  final Color noteColor;
  final String noteText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(color: noteColor),
      child: Text(noteText),
    );
  }
}
