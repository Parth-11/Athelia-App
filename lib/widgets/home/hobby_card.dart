import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
    required this.cardColor,
    required this.title,
    required this.description,
    this.borderColor,
    this.headingColor,
  });

  final Color cardColor;
  final Color? borderColor;
  final Color? headingColor;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 100),
      child: Card(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(decoration: BoxDecoration(), child: Text(title)),
              Spacer(),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
