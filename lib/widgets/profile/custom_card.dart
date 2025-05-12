import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.heading,
    required this.icon,
    required this.metric,
    this.boxColor = Colors.grey,
  });

  final String heading;
  final String metric;
  final IconData icon;
  final Color? boxColor;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 100),
      child: Card(
        color: boxColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(heading), SizedBox(height: 16), Text(metric)],
              ),
            ),
            SizedBox(width: 8),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
