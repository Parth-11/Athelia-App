import 'package:flutter/material.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 10,
          decoration: BoxDecoration(color: const Color(0xFFD9D9D9)),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0D199),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
              ),
              Text(''),
            ],
          ),
        ),
      ],
    );
  }
}
