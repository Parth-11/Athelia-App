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
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(color: headerColor),
      child: Row(
        children: [
          // App Logo
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(logo, size: 50),
              Text(tagLine, style: TextStyle(fontSize: 20)),
            ],
          ),
          Spacer(),
          CircleAvatar(
            radius: 32,
            backgroundColor: Color(0xFFD6A76E),
            child: CircleAvatar(radius: 28),
          ),
        ],
      ),
    );
  }
}
