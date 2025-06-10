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
      constraints: BoxConstraints(maxHeight: 100, minHeight: 40),
      child: Card(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(title),
              ),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
