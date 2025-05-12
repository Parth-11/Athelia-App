import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
    required this.logo,
    required this.tagLine,
    this.headerColor,
  });

  final Color? headerColor;
  final IconData logo;
  final String tagLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: headerColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            // App Logo
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(logo), Text(tagLine)],
            ),
            Spacer(),
            CircleAvatar(),
          ],
        ),
      ),
    );
  }
}
